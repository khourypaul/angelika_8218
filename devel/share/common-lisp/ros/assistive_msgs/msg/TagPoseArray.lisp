; Auto-generated. Do not edit!


(cl:in-package assistive_msgs-msg)


;//! \htmlinclude TagPoseArray.msg.html

(cl:defclass <TagPoseArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (poses
    :reader poses
    :initarg :poses
    :type (cl:vector assistive_msgs-msg:TagPose)
   :initform (cl:make-array 0 :element-type 'assistive_msgs-msg:TagPose :initial-element (cl:make-instance 'assistive_msgs-msg:TagPose))))
)

(cl:defclass TagPoseArray (<TagPoseArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TagPoseArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TagPoseArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assistive_msgs-msg:<TagPoseArray> is deprecated: use assistive_msgs-msg:TagPoseArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TagPoseArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assistive_msgs-msg:header-val is deprecated.  Use assistive_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'poses-val :lambda-list '(m))
(cl:defmethod poses-val ((m <TagPoseArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assistive_msgs-msg:poses-val is deprecated.  Use assistive_msgs-msg:poses instead.")
  (poses m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TagPoseArray>) ostream)
  "Serializes a message object of type '<TagPoseArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'poses))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TagPoseArray>) istream)
  "Deserializes a message object of type '<TagPoseArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'assistive_msgs-msg:TagPose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TagPoseArray>)))
  "Returns string type for a message object of type '<TagPoseArray>"
  "assistive_msgs/TagPoseArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TagPoseArray)))
  "Returns string type for a message object of type 'TagPoseArray"
  "assistive_msgs/TagPoseArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TagPoseArray>)))
  "Returns md5sum for a message object of type '<TagPoseArray>"
  "c3cca4e7646ea151147453dc311444c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TagPoseArray)))
  "Returns md5sum for a message object of type 'TagPoseArray"
  "c3cca4e7646ea151147453dc311444c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TagPoseArray>)))
  "Returns full string definition for message of type '<TagPoseArray>"
  (cl:format cl:nil "std_msgs/Header header~%TagPose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: assistive_msgs/TagPose~%int32 id~%string dictionary_name~%geometry_msgs/PoseWithCovariance pose~%geometry_msgs/Vector3 normal~%bool observed~%float32 tag_area_px~%float32 detection_score~%float32 reprojection_error_px~%bool depth_fused~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TagPoseArray)))
  "Returns full string definition for message of type 'TagPoseArray"
  (cl:format cl:nil "std_msgs/Header header~%TagPose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: assistive_msgs/TagPose~%int32 id~%string dictionary_name~%geometry_msgs/PoseWithCovariance pose~%geometry_msgs/Vector3 normal~%bool observed~%float32 tag_area_px~%float32 detection_score~%float32 reprojection_error_px~%bool depth_fused~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TagPoseArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TagPoseArray>))
  "Converts a ROS message object to a list"
  (cl:list 'TagPoseArray
    (cl:cons ':header (header msg))
    (cl:cons ':poses (poses msg))
))
