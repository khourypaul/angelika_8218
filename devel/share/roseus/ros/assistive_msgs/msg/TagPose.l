;; Auto-generated. Do not edit!


(when (boundp 'assistive_msgs::TagPose)
  (if (not (find-package "ASSISTIVE_MSGS"))
    (make-package "ASSISTIVE_MSGS"))
  (shadow 'TagPose (find-package "ASSISTIVE_MSGS")))
(unless (find-package "ASSISTIVE_MSGS::TAGPOSE")
  (make-package "ASSISTIVE_MSGS::TAGPOSE"))

(in-package "ROS")
;;//! \htmlinclude TagPose.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass assistive_msgs::TagPose
  :super ros::object
  :slots (_id _dictionary_name _pose _normal _observed _tag_area_px _detection_score _reprojection_error_px _depth_fused ))

(defmethod assistive_msgs::TagPose
  (:init
   (&key
    ((:id __id) 0)
    ((:dictionary_name __dictionary_name) "")
    ((:pose __pose) (instance geometry_msgs::PoseWithCovariance :init))
    ((:normal __normal) (instance geometry_msgs::Vector3 :init))
    ((:observed __observed) nil)
    ((:tag_area_px __tag_area_px) 0.0)
    ((:detection_score __detection_score) 0.0)
    ((:reprojection_error_px __reprojection_error_px) 0.0)
    ((:depth_fused __depth_fused) nil)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _dictionary_name (string __dictionary_name))
   (setq _pose __pose)
   (setq _normal __normal)
   (setq _observed __observed)
   (setq _tag_area_px (float __tag_area_px))
   (setq _detection_score (float __detection_score))
   (setq _reprojection_error_px (float __reprojection_error_px))
   (setq _depth_fused __depth_fused)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:dictionary_name
   (&optional __dictionary_name)
   (if __dictionary_name (setq _dictionary_name __dictionary_name)) _dictionary_name)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:normal
   (&rest __normal)
   (if (keywordp (car __normal))
       (send* _normal __normal)
     (progn
       (if __normal (setq _normal (car __normal)))
       _normal)))
  (:observed
   (&optional (__observed :null))
   (if (not (eq __observed :null)) (setq _observed __observed)) _observed)
  (:tag_area_px
   (&optional __tag_area_px)
   (if __tag_area_px (setq _tag_area_px __tag_area_px)) _tag_area_px)
  (:detection_score
   (&optional __detection_score)
   (if __detection_score (setq _detection_score __detection_score)) _detection_score)
  (:reprojection_error_px
   (&optional __reprojection_error_px)
   (if __reprojection_error_px (setq _reprojection_error_px __reprojection_error_px)) _reprojection_error_px)
  (:depth_fused
   (&optional (__depth_fused :null))
   (if (not (eq __depth_fused :null)) (setq _depth_fused __depth_fused)) _depth_fused)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; string _dictionary_name
    4 (length _dictionary_name)
    ;; geometry_msgs/PoseWithCovariance _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/Vector3 _normal
    (send _normal :serialization-length)
    ;; bool _observed
    1
    ;; float32 _tag_area_px
    4
    ;; float32 _detection_score
    4
    ;; float32 _reprojection_error_px
    4
    ;; bool _depth_fused
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; string _dictionary_name
       (write-long (length _dictionary_name) s) (princ _dictionary_name s)
     ;; geometry_msgs/PoseWithCovariance _pose
       (send _pose :serialize s)
     ;; geometry_msgs/Vector3 _normal
       (send _normal :serialize s)
     ;; bool _observed
       (if _observed (write-byte -1 s) (write-byte 0 s))
     ;; float32 _tag_area_px
       (sys::poke _tag_area_px (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _detection_score
       (sys::poke _detection_score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _reprojection_error_px
       (sys::poke _reprojection_error_px (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _depth_fused
       (if _depth_fused (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _dictionary_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _dictionary_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PoseWithCovariance _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/Vector3 _normal
     (send _normal :deserialize buf ptr-) (incf ptr- (send _normal :serialization-length))
   ;; bool _observed
     (setq _observed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _tag_area_px
     (setq _tag_area_px (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _detection_score
     (setq _detection_score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _reprojection_error_px
     (setq _reprojection_error_px (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _depth_fused
     (setq _depth_fused (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get assistive_msgs::TagPose :md5sum-) "0f26474302ad493af59fa06f6d81f35b")
(setf (get assistive_msgs::TagPose :datatype-) "assistive_msgs/TagPose")
(setf (get assistive_msgs::TagPose :definition-)
      "int32 id
string dictionary_name
geometry_msgs/PoseWithCovariance pose
geometry_msgs/Vector3 normal
bool observed
float32 tag_area_px
float32 detection_score
float32 reprojection_error_px
bool depth_fused

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :assistive_msgs/TagPose "0f26474302ad493af59fa06f6d81f35b")


