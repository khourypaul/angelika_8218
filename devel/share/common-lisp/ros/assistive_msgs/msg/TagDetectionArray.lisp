; Auto-generated. Do not edit!


(cl:in-package assistive_msgs-msg)


;//! \htmlinclude TagDetectionArray.msg.html

(cl:defclass <TagDetectionArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (image_width
    :reader image_width
    :initarg :image_width
    :type cl:integer
    :initform 0)
   (image_height
    :reader image_height
    :initarg :image_height
    :type cl:integer
    :initform 0)
   (detections
    :reader detections
    :initarg :detections
    :type (cl:vector assistive_msgs-msg:TagDetection)
   :initform (cl:make-array 0 :element-type 'assistive_msgs-msg:TagDetection :initial-element (cl:make-instance 'assistive_msgs-msg:TagDetection))))
)

(cl:defclass TagDetectionArray (<TagDetectionArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TagDetectionArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TagDetectionArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assistive_msgs-msg:<TagDetectionArray> is deprecated: use assistive_msgs-msg:TagDetectionArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TagDetectionArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assistive_msgs-msg:header-val is deprecated.  Use assistive_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'image_width-val :lambda-list '(m))
(cl:defmethod image_width-val ((m <TagDetectionArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assistive_msgs-msg:image_width-val is deprecated.  Use assistive_msgs-msg:image_width instead.")
  (image_width m))

(cl:ensure-generic-function 'image_height-val :lambda-list '(m))
(cl:defmethod image_height-val ((m <TagDetectionArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assistive_msgs-msg:image_height-val is deprecated.  Use assistive_msgs-msg:image_height instead.")
  (image_height m))

(cl:ensure-generic-function 'detections-val :lambda-list '(m))
(cl:defmethod detections-val ((m <TagDetectionArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assistive_msgs-msg:detections-val is deprecated.  Use assistive_msgs-msg:detections instead.")
  (detections m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TagDetectionArray>) ostream)
  "Serializes a message object of type '<TagDetectionArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'image_width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'image_width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'image_width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'image_width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'image_height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'image_height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'image_height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'image_height)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'detections))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'detections))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TagDetectionArray>) istream)
  "Deserializes a message object of type '<TagDetectionArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'image_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'image_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'image_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'image_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'image_height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'image_height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'image_height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'image_height)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'detections) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'detections)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'assistive_msgs-msg:TagDetection))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TagDetectionArray>)))
  "Returns string type for a message object of type '<TagDetectionArray>"
  "assistive_msgs/TagDetectionArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TagDetectionArray)))
  "Returns string type for a message object of type 'TagDetectionArray"
  "assistive_msgs/TagDetectionArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TagDetectionArray>)))
  "Returns md5sum for a message object of type '<TagDetectionArray>"
  "a03b80106751ad8d398be0566d903e79")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TagDetectionArray)))
  "Returns md5sum for a message object of type 'TagDetectionArray"
  "a03b80106751ad8d398be0566d903e79")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TagDetectionArray>)))
  "Returns full string definition for message of type '<TagDetectionArray>"
  (cl:format cl:nil "std_msgs/Header header~%uint32 image_width~%uint32 image_height~%TagDetection[] detections~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: assistive_msgs/TagDetection~%int32 id~%string dictionary_name~%geometry_msgs/Point32[] corners_px~%geometry_msgs/Point32 center_px~%float32 tag_area_px~%float32 detection_score~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TagDetectionArray)))
  "Returns full string definition for message of type 'TagDetectionArray"
  (cl:format cl:nil "std_msgs/Header header~%uint32 image_width~%uint32 image_height~%TagDetection[] detections~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: assistive_msgs/TagDetection~%int32 id~%string dictionary_name~%geometry_msgs/Point32[] corners_px~%geometry_msgs/Point32 center_px~%float32 tag_area_px~%float32 detection_score~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TagDetectionArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'detections) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TagDetectionArray>))
  "Converts a ROS message object to a list"
  (cl:list 'TagDetectionArray
    (cl:cons ':header (header msg))
    (cl:cons ':image_width (image_width msg))
    (cl:cons ':image_height (image_height msg))
    (cl:cons ':detections (detections msg))
))
