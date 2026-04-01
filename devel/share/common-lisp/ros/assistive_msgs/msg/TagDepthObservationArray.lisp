; Auto-generated. Do not edit!


(cl:in-package assistive_msgs-msg)


;//! \htmlinclude TagDepthObservationArray.msg.html

(cl:defclass <TagDepthObservationArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (observations
    :reader observations
    :initarg :observations
    :type (cl:vector assistive_msgs-msg:TagDepthObservation)
   :initform (cl:make-array 0 :element-type 'assistive_msgs-msg:TagDepthObservation :initial-element (cl:make-instance 'assistive_msgs-msg:TagDepthObservation))))
)

(cl:defclass TagDepthObservationArray (<TagDepthObservationArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TagDepthObservationArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TagDepthObservationArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assistive_msgs-msg:<TagDepthObservationArray> is deprecated: use assistive_msgs-msg:TagDepthObservationArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TagDepthObservationArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assistive_msgs-msg:header-val is deprecated.  Use assistive_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'observations-val :lambda-list '(m))
(cl:defmethod observations-val ((m <TagDepthObservationArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assistive_msgs-msg:observations-val is deprecated.  Use assistive_msgs-msg:observations instead.")
  (observations m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TagDepthObservationArray>) ostream)
  "Serializes a message object of type '<TagDepthObservationArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'observations))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'observations))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TagDepthObservationArray>) istream)
  "Deserializes a message object of type '<TagDepthObservationArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'observations) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'observations)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'assistive_msgs-msg:TagDepthObservation))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TagDepthObservationArray>)))
  "Returns string type for a message object of type '<TagDepthObservationArray>"
  "assistive_msgs/TagDepthObservationArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TagDepthObservationArray)))
  "Returns string type for a message object of type 'TagDepthObservationArray"
  "assistive_msgs/TagDepthObservationArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TagDepthObservationArray>)))
  "Returns md5sum for a message object of type '<TagDepthObservationArray>"
  "d36ffe9c694665b938ccaa32e775bddb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TagDepthObservationArray)))
  "Returns md5sum for a message object of type 'TagDepthObservationArray"
  "d36ffe9c694665b938ccaa32e775bddb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TagDepthObservationArray>)))
  "Returns full string definition for message of type '<TagDepthObservationArray>"
  (cl:format cl:nil "std_msgs/Header header~%TagDepthObservation[] observations~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: assistive_msgs/TagDepthObservation~%int32 id~%geometry_msgs/Point center_cam~%geometry_msgs/Vector3 normal_cam~%float32 mean_depth_m~%float32 valid_point_ratio~%uint32 support_point_count~%bool plane_fitted~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TagDepthObservationArray)))
  "Returns full string definition for message of type 'TagDepthObservationArray"
  (cl:format cl:nil "std_msgs/Header header~%TagDepthObservation[] observations~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: assistive_msgs/TagDepthObservation~%int32 id~%geometry_msgs/Point center_cam~%geometry_msgs/Vector3 normal_cam~%float32 mean_depth_m~%float32 valid_point_ratio~%uint32 support_point_count~%bool plane_fitted~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TagDepthObservationArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'observations) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TagDepthObservationArray>))
  "Converts a ROS message object to a list"
  (cl:list 'TagDepthObservationArray
    (cl:cons ':header (header msg))
    (cl:cons ':observations (observations msg))
))
