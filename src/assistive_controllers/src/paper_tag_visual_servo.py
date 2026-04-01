#!/usr/bin/env python

"""
Node: paper_tag_visual_servo
Description:
    Visually servos the OARBot Blue arm end-effector toward a detected ArUco
    paper tag.  Uses the 3-D tag poses published by paper_tag_pose_fuser (or
    paper_surface_estimator) and drives the arm with the same PD + velocity-
    limit control law used by body_single_joint_follower2.

    Control objective
    -----------------
    Move the arm so that the target tag is
      - centred in the camera field of view  (x, y error → 0 in camera frame)
      - at the configured standoff distance   (z error → 0 in camera frame)
      - facing the camera                     (tag normal ‖ camera -Z axis)

    The velocity command (geometry_msgs/Twist at 100 Hz) is expressed in the
    robot Cartesian base frame, matching the convention used by the Kinova
    j2n6s300 driver on OARBot Blue.

Parameters
----------
~surface_state_topic_name    : str  – TagPoseArray input
~cmd_vel_topic_name          : str  – Twist output
~tf_robot_base_frame_name    : str  – robot Cartesian base frame
~target_tag_id               : int  – tag ID to servo toward; -1 = best score
~standoff_distance_m         : float – desired camera-to-tag distance [m]
~enable_visual_servo         : bool – start enabled?
~toggle_visual_servo_service_name : str
~pub_rate                    : float – control rate [Hz] (must be 100 for Kinova)
~position_err_thres          : float – position deadzone [m]
~orientation_err_thres       : float – angular deadzone [rad]
~K_lin_{x,y,z}              : float – proportional position gains
~K_ang_{x,y,z}              : float – proportional orientation gains
~D_lin_{x,y,z}              : float – velocity-damping gains
~D_ang_{x,y,z}              : float – angular velocity-damping gains
~M_lin_{x,y,z}              : float – virtual mass (lin)
~M_ang_{x,y,z}              : float – virtual mass (ang)
~max_lin_acc                 : float – max linear acceleration [m/s²]
~max_lin_vel                 : float – max linear velocity [m/s]
~max_ang_acc                 : float – max angular acceleration [rad/s²]
~max_ang_vel                 : float – max angular velocity [rad/s]
~tag_timeout_sec             : float – seconds before tag is considered lost
~enable_orientation_control  : bool  – also servo orientation (tag normal)

Subscribes
----------
~surface_state_topic_name  (assistive_msgs/TagPoseArray)

Publishes
---------
~cmd_vel_topic_name        (geometry_msgs/Twist)

Services
--------
~toggle_visual_servo_service_name  (std_srvs/SetBool)
"""

import rospy
import numpy as np

import tf2_ros
import tf_conversions

from geometry_msgs.msg import Twist
from assistive_msgs.msg import TagPoseArray
from std_srvs.srv import SetBool, SetBoolRequest, SetBoolResponse


class PaperTagVisualServo(object):

    def __init__(self):
        rospy.init_node("paper_tag_visual_servo", anonymous=False)

        # ---- topics -------------------------------------------------------
        self.surface_state_topic_name = rospy.get_param(
            "~surface_state_topic_name", "paper_surface_state"
        )
        self.cmd_vel_topic_name = rospy.get_param("~cmd_vel_topic_name", "cmd_vel")

        # ---- frames -------------------------------------------------------
        self.tf_robot_base_frame = rospy.get_param(
            "~tf_robot_base_frame_name", "d1_tf_base_link"
        )

        # ---- servoing goal ------------------------------------------------
        self.target_tag_id = int(rospy.get_param("~target_tag_id", -1))
        self.standoff_distance_m = float(
            rospy.get_param("~standoff_distance_m", 0.35)
        )
        self.enable_orientation_control = rospy.get_param(
            "~enable_orientation_control", True
        )

        # ---- enable/disable -----------------------------------------------
        self.enable_visual_servo = rospy.get_param("~enable_visual_servo", False)
        self.toggle_service_name = rospy.get_param(
            "~toggle_visual_servo_service_name", "toggle_visual_servo"
        )
        self.srv_toggle = rospy.Service(
            self.toggle_service_name, SetBool, self._srv_toggle_cb
        )

        # ---- rate ---------------------------------------------------------
        self.pub_rate = float(rospy.get_param("~pub_rate", 100.0))
        self.expected_duration = 1.0 / self.pub_rate
        self.rate = rospy.Rate(self.pub_rate)

        # ---- PD gains (same parameter names as body_single_joint_follower2) --
        self.position_err_thres = float(rospy.get_param("~position_err_thres", 0.005))
        self.orientation_err_thres = float(
            rospy.get_param("~orientation_err_thres", 0.015)
        )

        self.K_lin_x = float(rospy.get_param("~K_lin_x", 5.0))
        self.K_lin_y = float(rospy.get_param("~K_lin_y", 5.0))
        self.K_lin_z = float(rospy.get_param("~K_lin_z", 5.0))
        self.K_ang_x = float(rospy.get_param("~K_ang_x", 3.0))
        self.K_ang_y = float(rospy.get_param("~K_ang_y", 3.0))
        self.K_ang_z = float(rospy.get_param("~K_ang_z", 0.0))

        self.D_lin_x = float(rospy.get_param("~D_lin_x", 5.0))
        self.D_lin_y = float(rospy.get_param("~D_lin_y", 5.0))
        self.D_lin_z = float(rospy.get_param("~D_lin_z", 5.0))
        self.D_ang_x = float(rospy.get_param("~D_ang_x", 3.0))
        self.D_ang_y = float(rospy.get_param("~D_ang_y", 3.0))
        self.D_ang_z = float(rospy.get_param("~D_ang_z", 0.0))

        self.M_lin_x = float(rospy.get_param("~M_lin_x", 1.0))
        self.M_lin_y = float(rospy.get_param("~M_lin_y", 1.0))
        self.M_lin_z = float(rospy.get_param("~M_lin_z", 1.0))
        self.M_ang_x = float(rospy.get_param("~M_ang_x", 1.0))
        self.M_ang_y = float(rospy.get_param("~M_ang_y", 1.0))
        self.M_ang_z = float(rospy.get_param("~M_ang_z", 1.0))

        self.max_lin_acc = float(rospy.get_param("~max_lin_acc", 2.0))
        self.max_lin_vel = float(rospy.get_param("~max_lin_vel", 0.15))
        self.max_ang_acc = float(rospy.get_param("~max_ang_acc", 2.0))
        self.max_ang_vel = float(rospy.get_param("~max_ang_vel", 0.5))

        self.tag_timeout_sec = float(rospy.get_param("~tag_timeout_sec", 0.5))

        # ---- state --------------------------------------------------------
        # Current command velocities (used for damping in the control law)
        self.Vx = 0.0
        self.Vy = 0.0
        self.Vz = 0.0
        self.Wx = 0.0
        self.Wy = 0.0
        self.Wz = 0.0

        self.latest_poses = None          # TagPoseArray
        self.latest_poses_time = None     # rospy.Time

        # ---- TF -----------------------------------------------------------
        self.tf_buffer = tf2_ros.Buffer(cache_time=rospy.Duration(10.0))
        self.tf_listener = tf2_ros.TransformListener(self.tf_buffer)

        # ---- pub / sub ----------------------------------------------------
        self.cmd_vel_pub = rospy.Publisher(
            self.cmd_vel_topic_name, Twist, queue_size=1
        )
        rospy.Subscriber(
            self.surface_state_topic_name,
            TagPoseArray,
            self._poses_cb,
            queue_size=1,
        )

        # ---- control timer ------------------------------------------------
        rospy.Timer(
            rospy.Duration(self.expected_duration), self._control_loop
        )

        rospy.loginfo(
            "paper_tag_visual_servo: initialized. "
            "Servoing %s. Enabled=%s. target_id=%d standoff=%.3f m",
            "ENABLED" if self.enable_visual_servo else "DISABLED",
            self.enable_visual_servo,
            self.target_tag_id,
            self.standoff_distance_m,
        )
        rospy.loginfo(
            "paper_tag_visual_servo: listening on '%s', "
            "publishing cmd_vel on '%s'",
            self.surface_state_topic_name,
            self.cmd_vel_topic_name,
        )

    # ------------------------------------------------------------------ #
    #  Subscriber callbacks                                                #
    # ------------------------------------------------------------------ #

    def _poses_cb(self, msg):
        self.latest_poses = msg
        self.latest_poses_time = rospy.Time.now()

    # ------------------------------------------------------------------ #
    #  Service callbacks                                                   #
    # ------------------------------------------------------------------ #

    def _srv_toggle_cb(self, req):
        self.enable_visual_servo = req.data
        if not self.enable_visual_servo:
            self._publish_zero_vel()
        rospy.loginfo(
            "paper_tag_visual_servo: visual servo %s",
            "ENABLED" if self.enable_visual_servo else "DISABLED",
        )
        return SetBoolResponse(success=True, message="ok")

    # ------------------------------------------------------------------ #
    #  Main control loop (runs at pub_rate Hz via rospy.Timer)            #
    # ------------------------------------------------------------------ #

    def _control_loop(self, event=None):
        if not self.enable_visual_servo:
            self._publish_zero_vel()
            return

        # -- tag loss detection -------------------------------------------
        if self.latest_poses is None or self.latest_poses_time is None:
            rospy.logwarn_throttle(
                5.0, "paper_tag_visual_servo: no pose data yet, waiting..."
            )
            self._publish_zero_vel()
            return

        age = (rospy.Time.now() - self.latest_poses_time).to_sec()
        if age > self.tag_timeout_sec:
            rospy.logwarn_throttle(
                2.0,
                "paper_tag_visual_servo: tag data stale (%.2f s), stopping arm",
                age,
            )
            self._publish_zero_vel()
            return

        # -- tag selection ------------------------------------------------
        target = self._select_tag(self.latest_poses)
        if target is None:
            rospy.logwarn_throttle(
                2.0, "paper_tag_visual_servo: no valid tag detected, stopping arm"
            )
            self._publish_zero_vel()
            return

        if not target.observed:
            rospy.logwarn_throttle(
                2.0,
                "paper_tag_visual_servo: target tag id=%d not observed, stopping",
                target.id,
            )
            self._publish_zero_vel()
            return

        # -- TF: camera frame → robot base frame --------------------------
        cam_frame = self.latest_poses.header.frame_id
        if not cam_frame:
            rospy.logwarn_throttle(
                5.0,
                "paper_tag_visual_servo: TagPoseArray has empty header.frame_id",
            )
            self._publish_zero_vel()
            return

        try:
            T_base2cam = self.tf_buffer.lookup_transform(
                self.tf_robot_base_frame,
                cam_frame,
                rospy.Time(0),
                rospy.Duration(0.0),
            )
        except (
            tf2_ros.LookupException,
            tf2_ros.ConnectivityException,
            tf2_ros.ExtrapolationException,
        ) as exc:
            rospy.logwarn_throttle(
                5.0,
                "paper_tag_visual_servo: TF lookup %s→%s failed: %s",
                self.tf_robot_base_frame,
                cam_frame,
                str(exc),
            )
            self._publish_zero_vel()
            return

        q = [
            T_base2cam.transform.rotation.x,
            T_base2cam.transform.rotation.y,
            T_base2cam.transform.rotation.z,
            T_base2cam.transform.rotation.w,
        ]
        R_base2cam = tf_conversions.transformations.quaternion_matrix(q)[:3, :3]

        # -- position error in camera frame --------------------------------
        #   We want the tag at [0, 0, standoff_d] in camera frame:
        #     x=0  → tag centred horizontally
        #     y=0  → tag centred vertically
        #     z=standoff_d → tag at the desired distance
        tag_pos_cam = np.array([
            target.pose.pose.position.x,
            target.pose.pose.position.y,
            target.pose.pose.position.z,
        ])
        desired_pos_cam = np.array([0.0, 0.0, self.standoff_distance_m])
        pos_err_cam = tag_pos_cam - desired_pos_cam

        # Transform position error to robot base frame
        pos_err_base = R_base2cam.dot(pos_err_cam)

        # -- orientation error in camera frame (tag normal) ----------------
        #   TagPose.normal is the tag surface normal in camera frame.
        #   For a tag facing the camera the normal points toward the camera,
        #   i.e. the z-component should be negative (typical convention).
        #   We want the camera optical axis (+Z) to point at the tag, i.e.
        #   the tag normal should lie along -Z_cam.
        #
        #   Small-angle angular error to drive (nx, ny) → (0, 0):
        #     omega_x_cam =  n_y   (tilt around X to bring n_y → 0)
        #     omega_y_cam = -n_x   (tilt around Y to bring n_x → 0)
        #     omega_z_cam =  0     (in-plane rotation; not controlled)
        #
        #   Transform the result to the robot base frame.
        if self.enable_orientation_control:
            nx = target.normal.x
            ny = target.normal.y
            ang_err_cam = np.array([ny, -nx, 0.0])
            ang_err_base = R_base2cam.dot(ang_err_cam)
        else:
            ang_err_base = np.array([0.0, 0.0, 0.0])

        # -- apply control law (PD + virtual mass + velocity limiting) -----
        Vx, Vy, Vz, Wx, Wy, Wz = self._control_law(pos_err_base, ang_err_base)

        rospy.logdebug(
            "paper_tag_visual_servo: tag id=%d score=%.2f "
            "pos_err_cam=[%.3f, %.3f, %.3f] "
            "cmd_vel=[%.3f, %.3f, %.3f, %.3f, %.3f, %.3f]",
            target.id, target.detection_score,
            pos_err_cam[0], pos_err_cam[1], pos_err_cam[2],
            Vx, Vy, Vz, Wx, Wy, Wz,
        )
        rospy.loginfo_throttle(
            1.0,
            "paper_tag_visual_servo: tag id=%d score=%.2f "
            "pos_err[cam]=[%.3f, %.3f, %.3f] "
            "v_base=[%.3f, %.3f, %.3f] w_base=[%.3f, %.3f, %.3f]",
            target.id, target.detection_score,
            pos_err_cam[0], pos_err_cam[1], pos_err_cam[2],
            Vx, Vy, Vz, Wx, Wy, Wz,
        )

        self._publish_vel(Vx, Vy, Vz, Wx, Wy, Wz)

    # ------------------------------------------------------------------ #
    #  Tag selection                                                       #
    # ------------------------------------------------------------------ #

    def _select_tag(self, pose_array):
        """Return the TagPose to servo toward.

        If target_tag_id >= 0, return that specific tag (if observed).
        Otherwise return the tag with the highest detection_score.
        """
        if not pose_array.poses:
            return None

        if self.target_tag_id >= 0:
            for pose in pose_array.poses:
                if pose.id == self.target_tag_id:
                    return pose
            return None

        # Best-score tag among observed tags
        observed = [p for p in pose_array.poses if p.observed]
        if not observed:
            return None
        return max(observed, key=lambda p: p.detection_score)

    # ------------------------------------------------------------------ #
    #  Control law (matches body_single_joint_follower2 exactly)          #
    # ------------------------------------------------------------------ #

    def _allowance(self, x, threshold):
        """Zero inside the deadzone, pass through outside."""
        return 0.0 if abs(x) <= threshold else x

    def _control_law(self, pos_err, ang_err):
        """PD + virtual-mass control with acceleration/velocity clamping.

        Inputs are already in the robot base frame.
        Returns (Vx, Vy, Vz, Wx, Wy, Wz) in the robot base frame.
        """
        # Deadzone
        pe = [self._allowance(pos_err[i], self.position_err_thres) for i in range(3)]
        ae = [self._allowance(ang_err[i], self.orientation_err_thres) for i in range(3)]

        # Virtual spring (proportional)
        F_lin = np.array([
            pe[0] * self.K_lin_x,
            pe[1] * self.K_lin_y,
            pe[2] * self.K_lin_z,
        ])
        F_ang = np.array([
            ae[0] * self.K_ang_x,
            ae[1] * self.K_ang_y,
            ae[2] * self.K_ang_z,
        ])

        # Virtual damping (derivative – damp current velocity)
        F_lin -= np.array([
            self.Vx * self.D_lin_x,
            self.Vy * self.D_lin_y,
            self.Vz * self.D_lin_z,
        ])
        F_ang -= np.array([
            self.Wx * self.D_ang_x,
            self.Wy * self.D_ang_y,
            self.Wz * self.D_ang_z,
        ])

        # Virtual mass → acceleration
        a_lin = np.array([
            F_lin[0] / self.M_lin_x,
            F_lin[1] / self.M_lin_y,
            F_lin[2] / self.M_lin_z,
        ])
        a_ang = np.array([
            F_ang[0] / self.M_ang_x,
            F_ang[1] / self.M_ang_y,
            F_ang[2] / self.M_ang_z,
        ])

        # Clamp acceleration
        a_lin_norm = np.linalg.norm(a_lin)
        if a_lin_norm > self.max_lin_acc:
            rospy.logwarn_throttle(
                20.0, "paper_tag_visual_servo: high linear acceleration, clamping"
            )
            a_lin *= self.max_lin_acc / a_lin_norm

        a_ang_norm = np.linalg.norm(a_ang)
        if a_ang_norm > self.max_ang_acc:
            rospy.logwarn_throttle(
                20.0, "paper_tag_visual_servo: high angular acceleration, clamping"
            )
            a_ang *= self.max_ang_acc / a_ang_norm

        # Integrate acceleration → velocity
        v_lin = np.array([self.Vx, self.Vy, self.Vz]) + a_lin * self.expected_duration
        v_ang = np.array([self.Wx, self.Wy, self.Wz]) + a_ang * self.expected_duration

        # Clamp velocity
        v_lin_norm = np.linalg.norm(v_lin)
        if v_lin_norm > self.max_lin_vel:
            rospy.logwarn_throttle(
                20.0, "paper_tag_visual_servo: high linear velocity, clamping"
            )
            v_lin *= self.max_lin_vel / v_lin_norm

        v_ang_norm = np.linalg.norm(v_ang)
        if v_ang_norm > self.max_ang_vel:
            rospy.logwarn_throttle(
                20.0, "paper_tag_visual_servo: high angular velocity, clamping"
            )
            v_ang *= self.max_ang_vel / v_ang_norm

        # Store for next cycle (needed for damping)
        self.Vx, self.Vy, self.Vz = v_lin[0], v_lin[1], v_lin[2]
        self.Wx, self.Wy, self.Wz = v_ang[0], v_ang[1], v_ang[2]

        return v_lin[0], v_lin[1], v_lin[2], v_ang[0], v_ang[1], v_ang[2]

    # ------------------------------------------------------------------ #
    #  Publishing helpers                                                  #
    # ------------------------------------------------------------------ #

    def _publish_vel(self, Vx, Vy, Vz, Wx, Wy, Wz):
        msg = Twist()
        msg.linear.x = Vx
        msg.linear.y = Vy
        msg.linear.z = Vz
        msg.angular.x = Wx
        msg.angular.y = Wy
        msg.angular.z = Wz
        self.cmd_vel_pub.publish(msg)

    def _publish_zero_vel(self):
        # Reset stored velocities so damping re-ramps from zero after a pause
        self.Vx = 0.0
        self.Vy = 0.0
        self.Vz = 0.0
        self.Wx = 0.0
        self.Wy = 0.0
        self.Wz = 0.0
        self._publish_vel(0.0, 0.0, 0.0, 0.0, 0.0, 0.0)


if __name__ == "__main__":
    try:
        PaperTagVisualServo()
        rospy.spin()
    except Exception as exc:
        rospy.logfatal("paper_tag_visual_servo crashed: %s", str(exc))
        raise
