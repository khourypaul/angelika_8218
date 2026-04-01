; Auto-generated. Do not edit!


(cl:in-package assistive_msgs-msg)


;//! \htmlinclude TagPose.msg.html

(cl:defclass <TagPose> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (dictionary_name
    :reader dictionary_name
    :initarg :dictionary_name
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseWithCovariance
    :initform (cl:make-instance 'geometry_msgs-msg:PoseWithCovariance))
   (normal
    :reader normal
    :initarg :normal
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (observed
    :reader observed
    :initarg :observed
    :type cl:boolean
    :initform cl:nil)
   (tag_area_px
    :reader tag_area_px
    :initarg :tag_area_px
    :type cl:float
    :initform 0.0)
   (detection_score
    :reader detection_score
    :initarg :detection_score
    :type cl:float
    :initform 0.0)
   (reprojection_error_px
    :reader reprojection_error_px
    :initarg :reprojection_error_px
    :type cl:float
    :initform 0.0)
   (depth_fused
    :reader depth_fused
    :initarg :depth_fused
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TagPose (<TagPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TagPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TagPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assistive_msgs-msg:<TagPose> is deprecated: use assistive_msgs-msg:TagPose instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <TagPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assistive_msgs-msg:id-val is deprecated.  Use assistive_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'dictionary_name-val :lambda-list '(m))
(cl:defmethod dictionary_name-val ((m <TagPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assistive_msgs-msg:dictionary_name-val is deprecated.  Use assistive_msgs-msg:dictionary_name instead.")
  (dictionary_name m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <TagPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assistive_msgs-msg:pose-val is deprecated.  Use assistive_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'normal-val :lambda-list '(m))
(cl:defmethod normal-val ((m <TagPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assistive_msgs-msg:normal-val is deprecated.  Use assistive_msgs-msg:normal instead.")
  (normal m))

(cl:ensure-generic-function 'observed-val :lambda-list '(m))
(cl:defmethod observed-val ((m <TagPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assistive_msgs-msg:observed-val is deprecated.  Use assistive_msgs-msg:observed instead.")
  (observed m))

(cl:ensure-generic-function 'tag_area_px-val :lambda-list '(m))
(cl:defmethod tag_area_px-val ((m <TagPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assistive_msgs-msg:tag_area_px-val is deprecated.  Use assistive_msgs-msg:tag_area_px instead.")
  (tag_area_px m))

(cl:ensure-generic-function 'detection_score-val :lambda-list '(m))
(cl:defmethod detection_score-val ((m <TagPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assistive_msgs-msg:detection_score-val is deprecated.  Use assistive_msgs-msg:detection_score instead.")
  (detection_score m))

(cl:ensure-generic-function 'reprojection_error_px-val :lambda-list '(m))
(cl:defmethod reprojection_error_px-val ((m <TagPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assistive_msgs-msg:reprojection_error_px-val is deprecated.  Use assistive_msgs-msg:reprojection_error_px instead.")
  (reprojection_error_px m))

(cl:ensure-generic-function 'depth_fused-val :lambda-list '(m))
(cl:defmethod depth_fused-val ((m <TagPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assistive_msgs-msg:depth_fused-val is deprecated.  Use assistive_msgs-msg:depth_fused instead.")
  (depth_fused m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TagPose>) ostream)
  "Serializes a message object of type '<TagPose>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'dictionary_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'dictionary_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'normal) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'observed) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tag_area_px))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'detection_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'reprojection_error_px))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'depth_fused) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TagPose>) istream)
  "Deserializes a message object of type '<TagPose>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dictionary_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'dictionary_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'normal) istream)
    (cl:setf (cl:slot-value msg 'observed) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tag_area_px) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'detection_score) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reprojection_error_px) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'depth_fused) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TagPose>)))
  "Returns string type for a message object of type '<TagPose>"
  "assistive_msgs/TagPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TagPose)))
  "Returns string type for a message object of type 'TagPose"
  "assistive_msgs/TagPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TagPose>)))
  "Returns md5sum for a message object of type '<TagPose>"
  "0f26474302ad493af59fa06f6d81f35b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TagPose)))
  "Returns md5sum for a message object of type 'TagPose"
  "0f26474302ad493af59fa06f6d81f35b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TagPose>)))
  "Returns full string definition for message of type '<TagPose>"
  (cl:format cl:nil "int32 id~%string dictionary_name~%geometry_msgs/PoseWithCovariance pose~%geometry_msgs/Vector3 normal~%bool observed~%float32 tag_area_px~%float32 detection_score~%float32 reprojection_error_px~%bool depth_fused~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TagPose)))
  "Returns full string definition for message of type 'TagPose"
  (cl:format cl:nil "int32 id~%string dictionary_name~%geometry_msgs/PoseWithCovariance pose~%geometry_msgs/Vector3 normal~%bool observed~%float32 tag_area_px~%float32 detection_score~%float32 reprojection_error_px~%bool depth_fused~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TagPose>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'dictionary_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'normal))
     1
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TagPose>))
  "Converts a ROS message object to a list"
  (cl:list 'TagPose
    (cl:cons ':id (id msg))
    (cl:cons ':dictionary_name (dictionary_name msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':normal (normal msg))
    (cl:cons ':observed (observed msg))
    (cl:cons ':tag_area_px (tag_area_px msg))
    (cl:cons ':detection_score (detection_score msg))
    (cl:cons ':reprojection_error_px (reprojection_error_px msg))
    (cl:cons ':depth_fused (depth_fused msg))
))
