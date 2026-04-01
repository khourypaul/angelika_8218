;; Auto-generated. Do not edit!


(when (boundp 'assistive_msgs::TagDepthObservation)
  (if (not (find-package "ASSISTIVE_MSGS"))
    (make-package "ASSISTIVE_MSGS"))
  (shadow 'TagDepthObservation (find-package "ASSISTIVE_MSGS")))
(unless (find-package "ASSISTIVE_MSGS::TAGDEPTHOBSERVATION")
  (make-package "ASSISTIVE_MSGS::TAGDEPTHOBSERVATION"))

(in-package "ROS")
;;//! \htmlinclude TagDepthObservation.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass assistive_msgs::TagDepthObservation
  :super ros::object
  :slots (_id _center_cam _normal_cam _mean_depth_m _valid_point_ratio _support_point_count _plane_fitted ))

(defmethod assistive_msgs::TagDepthObservation
  (:init
   (&key
    ((:id __id) 0)
    ((:center_cam __center_cam) (instance geometry_msgs::Point :init))
    ((:normal_cam __normal_cam) (instance geometry_msgs::Vector3 :init))
    ((:mean_depth_m __mean_depth_m) 0.0)
    ((:valid_point_ratio __valid_point_ratio) 0.0)
    ((:support_point_count __support_point_count) 0)
    ((:plane_fitted __plane_fitted) nil)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _center_cam __center_cam)
   (setq _normal_cam __normal_cam)
   (setq _mean_depth_m (float __mean_depth_m))
   (setq _valid_point_ratio (float __valid_point_ratio))
   (setq _support_point_count (round __support_point_count))
   (setq _plane_fitted __plane_fitted)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:center_cam
   (&rest __center_cam)
   (if (keywordp (car __center_cam))
       (send* _center_cam __center_cam)
     (progn
       (if __center_cam (setq _center_cam (car __center_cam)))
       _center_cam)))
  (:normal_cam
   (&rest __normal_cam)
   (if (keywordp (car __normal_cam))
       (send* _normal_cam __normal_cam)
     (progn
       (if __normal_cam (setq _normal_cam (car __normal_cam)))
       _normal_cam)))
  (:mean_depth_m
   (&optional __mean_depth_m)
   (if __mean_depth_m (setq _mean_depth_m __mean_depth_m)) _mean_depth_m)
  (:valid_point_ratio
   (&optional __valid_point_ratio)
   (if __valid_point_ratio (setq _valid_point_ratio __valid_point_ratio)) _valid_point_ratio)
  (:support_point_count
   (&optional __support_point_count)
   (if __support_point_count (setq _support_point_count __support_point_count)) _support_point_count)
  (:plane_fitted
   (&optional (__plane_fitted :null))
   (if (not (eq __plane_fitted :null)) (setq _plane_fitted __plane_fitted)) _plane_fitted)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; geometry_msgs/Point _center_cam
    (send _center_cam :serialization-length)
    ;; geometry_msgs/Vector3 _normal_cam
    (send _normal_cam :serialization-length)
    ;; float32 _mean_depth_m
    4
    ;; float32 _valid_point_ratio
    4
    ;; uint32 _support_point_count
    4
    ;; bool _plane_fitted
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; geometry_msgs/Point _center_cam
       (send _center_cam :serialize s)
     ;; geometry_msgs/Vector3 _normal_cam
       (send _normal_cam :serialize s)
     ;; float32 _mean_depth_m
       (sys::poke _mean_depth_m (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _valid_point_ratio
       (sys::poke _valid_point_ratio (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _support_point_count
       (write-long _support_point_count s)
     ;; bool _plane_fitted
       (if _plane_fitted (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point _center_cam
     (send _center_cam :deserialize buf ptr-) (incf ptr- (send _center_cam :serialization-length))
   ;; geometry_msgs/Vector3 _normal_cam
     (send _normal_cam :deserialize buf ptr-) (incf ptr- (send _normal_cam :serialization-length))
   ;; float32 _mean_depth_m
     (setq _mean_depth_m (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _valid_point_ratio
     (setq _valid_point_ratio (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _support_point_count
     (setq _support_point_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _plane_fitted
     (setq _plane_fitted (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get assistive_msgs::TagDepthObservation :md5sum-) "4196ac7d305dd54a89c13071539bb080")
(setf (get assistive_msgs::TagDepthObservation :datatype-) "assistive_msgs/TagDepthObservation")
(setf (get assistive_msgs::TagDepthObservation :definition-)
      "int32 id
geometry_msgs/Point center_cam
geometry_msgs/Vector3 normal_cam
float32 mean_depth_m
float32 valid_point_ratio
uint32 support_point_count
bool plane_fitted

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

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



(provide :assistive_msgs/TagDepthObservation "4196ac7d305dd54a89c13071539bb080")


