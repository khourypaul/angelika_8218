; Auto-generated. Do not edit!


(cl:in-package assistive_msgs-msg)


;//! \htmlinclude TagDepthObservation.msg.html

(cl:defclass <TagDepthObservation> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (center_cam
    :reader center_cam
    :initarg :center_cam
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (normal_cam
    :reader normal_cam
    :initarg :normal_cam
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (mean_depth_m
    :reader mean_depth_m
    :initarg :mean_depth_m
    :type cl:float
    :initform 0.0)
   (valid_point_ratio
    :reader valid_point_ratio
    :initarg :valid_point_ratio
    :type cl:float
    :initform 0.0)
   (support_point_count
    :reader support_point_count
    :initarg :support_point_count
    :type cl:integer
    :initform 0)
   (plane_fitted
    :reader plane_fitted
    :initarg :plane_fitted
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TagDepthObservation (<TagDepthObservation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TagDepthObservation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TagDepthObservation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assistive_msgs-msg:<TagDepthObservation> is deprecated: use assistive_msgs-msg:TagDepthObservation instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <TagDepthObservation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assistive_msgs-msg:id-val is deprecated.  Use assistive_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'center_cam-val :lambda-list '(m))
(cl:defmethod center_cam-val ((m <TagDepthObservation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assistive_msgs-msg:center_cam-val is deprecated.  Use assistive_msgs-msg:center_cam instead.")
  (center_cam m))

(cl:ensure-generic-function 'normal_cam-val :lambda-list '(m))
(cl:defmethod normal_cam-val ((m <TagDepthObservation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assistive_msgs-msg:normal_cam-val is deprecated.  Use assistive_msgs-msg:normal_cam instead.")
  (normal_cam m))

(cl:ensure-generic-function 'mean_depth_m-val :lambda-list '(m))
(cl:defmethod mean_depth_m-val ((m <TagDepthObservation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assistive_msgs-msg:mean_depth_m-val is deprecated.  Use assistive_msgs-msg:mean_depth_m instead.")
  (mean_depth_m m))

(cl:ensure-generic-function 'valid_point_ratio-val :lambda-list '(m))
(cl:defmethod valid_point_ratio-val ((m <TagDepthObservation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assistive_msgs-msg:valid_point_ratio-val is deprecated.  Use assistive_msgs-msg:valid_point_ratio instead.")
  (valid_point_ratio m))

(cl:ensure-generic-function 'support_point_count-val :lambda-list '(m))
(cl:defmethod support_point_count-val ((m <TagDepthObservation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assistive_msgs-msg:support_point_count-val is deprecated.  Use assistive_msgs-msg:support_point_count instead.")
  (support_point_count m))

(cl:ensure-generic-function 'plane_fitted-val :lambda-list '(m))
(cl:defmethod plane_fitted-val ((m <TagDepthObservation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assistive_msgs-msg:plane_fitted-val is deprecated.  Use assistive_msgs-msg:plane_fitted instead.")
  (plane_fitted m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TagDepthObservation>) ostream)
  "Serializes a message object of type '<TagDepthObservation>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center_cam) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'normal_cam) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mean_depth_m))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'valid_point_ratio))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'support_point_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'support_point_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'support_point_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'support_point_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'plane_fitted) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TagDepthObservation>) istream)
  "Deserializes a message object of type '<TagDepthObservation>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center_cam) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'normal_cam) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mean_depth_m) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'valid_point_ratio) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'support_point_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'support_point_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'support_point_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'support_point_count)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'plane_fitted) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TagDepthObservation>)))
  "Returns string type for a message object of type '<TagDepthObservation>"
  "assistive_msgs/TagDepthObservation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TagDepthObservation)))
  "Returns string type for a message object of type 'TagDepthObservation"
  "assistive_msgs/TagDepthObservation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TagDepthObservation>)))
  "Returns md5sum for a message object of type '<TagDepthObservation>"
  "4196ac7d305dd54a89c13071539bb080")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TagDepthObservation)))
  "Returns md5sum for a message object of type 'TagDepthObservation"
  "4196ac7d305dd54a89c13071539bb080")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TagDepthObservation>)))
  "Returns full string definition for message of type '<TagDepthObservation>"
  (cl:format cl:nil "int32 id~%geometry_msgs/Point center_cam~%geometry_msgs/Vector3 normal_cam~%float32 mean_depth_m~%float32 valid_point_ratio~%uint32 support_point_count~%bool plane_fitted~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TagDepthObservation)))
  "Returns full string definition for message of type 'TagDepthObservation"
  (cl:format cl:nil "int32 id~%geometry_msgs/Point center_cam~%geometry_msgs/Vector3 normal_cam~%float32 mean_depth_m~%float32 valid_point_ratio~%uint32 support_point_count~%bool plane_fitted~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TagDepthObservation>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center_cam))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'normal_cam))
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TagDepthObservation>))
  "Converts a ROS message object to a list"
  (cl:list 'TagDepthObservation
    (cl:cons ':id (id msg))
    (cl:cons ':center_cam (center_cam msg))
    (cl:cons ':normal_cam (normal_cam msg))
    (cl:cons ':mean_depth_m (mean_depth_m msg))
    (cl:cons ':valid_point_ratio (valid_point_ratio msg))
    (cl:cons ':support_point_count (support_point_count msg))
    (cl:cons ':plane_fitted (plane_fitted msg))
))
