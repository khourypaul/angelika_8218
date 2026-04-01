;; Auto-generated. Do not edit!


(when (boundp 'assistive_msgs::TagDepthObservationArray)
  (if (not (find-package "ASSISTIVE_MSGS"))
    (make-package "ASSISTIVE_MSGS"))
  (shadow 'TagDepthObservationArray (find-package "ASSISTIVE_MSGS")))
(unless (find-package "ASSISTIVE_MSGS::TAGDEPTHOBSERVATIONARRAY")
  (make-package "ASSISTIVE_MSGS::TAGDEPTHOBSERVATIONARRAY"))

(in-package "ROS")
;;//! \htmlinclude TagDepthObservationArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass assistive_msgs::TagDepthObservationArray
  :super ros::object
  :slots (_header _observations ))

(defmethod assistive_msgs::TagDepthObservationArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:observations __observations) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _observations __observations)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:observations
   (&rest __observations)
   (if (keywordp (car __observations))
       (send* _observations __observations)
     (progn
       (if __observations (setq _observations (car __observations)))
       _observations)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; assistive_msgs/TagDepthObservation[] _observations
    (apply #'+ (send-all _observations :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; assistive_msgs/TagDepthObservation[] _observations
     (write-long (length _observations) s)
     (dolist (elem _observations)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; assistive_msgs/TagDepthObservation[] _observations
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _observations (let (r) (dotimes (i n) (push (instance assistive_msgs::TagDepthObservation :init) r)) r))
     (dolist (elem- _observations)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get assistive_msgs::TagDepthObservationArray :md5sum-) "d36ffe9c694665b938ccaa32e775bddb")
(setf (get assistive_msgs::TagDepthObservationArray :datatype-) "assistive_msgs/TagDepthObservationArray")
(setf (get assistive_msgs::TagDepthObservationArray :definition-)
      "std_msgs/Header header
TagDepthObservation[] observations

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: assistive_msgs/TagDepthObservation
int32 id
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



(provide :assistive_msgs/TagDepthObservationArray "d36ffe9c694665b938ccaa32e775bddb")


