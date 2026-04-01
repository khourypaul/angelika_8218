;; Auto-generated. Do not edit!


(when (boundp 'assistive_msgs::TagDetectionArray)
  (if (not (find-package "ASSISTIVE_MSGS"))
    (make-package "ASSISTIVE_MSGS"))
  (shadow 'TagDetectionArray (find-package "ASSISTIVE_MSGS")))
(unless (find-package "ASSISTIVE_MSGS::TAGDETECTIONARRAY")
  (make-package "ASSISTIVE_MSGS::TAGDETECTIONARRAY"))

(in-package "ROS")
;;//! \htmlinclude TagDetectionArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass assistive_msgs::TagDetectionArray
  :super ros::object
  :slots (_header _image_width _image_height _detections ))

(defmethod assistive_msgs::TagDetectionArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:image_width __image_width) 0)
    ((:image_height __image_height) 0)
    ((:detections __detections) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _image_width (round __image_width))
   (setq _image_height (round __image_height))
   (setq _detections __detections)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:image_width
   (&optional __image_width)
   (if __image_width (setq _image_width __image_width)) _image_width)
  (:image_height
   (&optional __image_height)
   (if __image_height (setq _image_height __image_height)) _image_height)
  (:detections
   (&rest __detections)
   (if (keywordp (car __detections))
       (send* _detections __detections)
     (progn
       (if __detections (setq _detections (car __detections)))
       _detections)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _image_width
    4
    ;; uint32 _image_height
    4
    ;; assistive_msgs/TagDetection[] _detections
    (apply #'+ (send-all _detections :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _image_width
       (write-long _image_width s)
     ;; uint32 _image_height
       (write-long _image_height s)
     ;; assistive_msgs/TagDetection[] _detections
     (write-long (length _detections) s)
     (dolist (elem _detections)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _image_width
     (setq _image_width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _image_height
     (setq _image_height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; assistive_msgs/TagDetection[] _detections
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _detections (let (r) (dotimes (i n) (push (instance assistive_msgs::TagDetection :init) r)) r))
     (dolist (elem- _detections)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get assistive_msgs::TagDetectionArray :md5sum-) "a03b80106751ad8d398be0566d903e79")
(setf (get assistive_msgs::TagDetectionArray :datatype-) "assistive_msgs/TagDetectionArray")
(setf (get assistive_msgs::TagDetectionArray :definition-)
      "std_msgs/Header header
uint32 image_width
uint32 image_height
TagDetection[] detections

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
MSG: assistive_msgs/TagDetection
int32 id
string dictionary_name
geometry_msgs/Point32[] corners_px
geometry_msgs/Point32 center_px
float32 tag_area_px
float32 detection_score

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
")



(provide :assistive_msgs/TagDetectionArray "a03b80106751ad8d398be0566d903e79")


