; Auto-generated. Do not edit!


(cl:in-package assistive_msgs-msg)


;//! \htmlinclude TagDetection.msg.html

(cl:defclass <TagDetection> (roslisp-msg-protocol:ros-message)
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
   (corners_px
    :reader corners_px
    :initarg :corners_px
    :type (cl:vector geometry_msgs-msg:Point32)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point32 :initial-element (cl:make-instance 'geometry_msgs-msg:Point32)))
   (center_px
    :reader center_px
    :initarg :center_px
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (tag_area_px
    :reader tag_area_px
    :initarg :tag_area_px
    :type cl:float
    :initform 0.0)
   (detection_score
    :reader detection_score
    :initarg :detection_score
    :type cl:float
    :initform 0.0))
)

(cl:defclass TagDetection (<TagDetection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TagDetection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TagDetection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assistive_msgs-msg:<TagDetection> is deprecated: use assistive_msgs-msg:TagDetection instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <TagDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assistive_msgs-msg:id-val is deprecated.  Use assistive_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'dictionary_name-val :lambda-list '(m))
(cl:defmethod dictionary_name-val ((m <TagDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assistive_msgs-msg:dictionary_name-val is deprecated.  Use assistive_msgs-msg:dictionary_name instead.")
  (dictionary_name m))

(cl:ensure-generic-function 'corners_px-val :lambda-list '(m))
(cl:defmethod corners_px-val ((m <TagDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assistive_msgs-msg:corners_px-val is deprecated.  Use assistive_msgs-msg:corners_px instead.")
  (corners_px m))

(cl:ensure-generic-function 'center_px-val :lambda-list '(m))
(cl:defmethod center_px-val ((m <TagDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assistive_msgs-msg:center_px-val is deprecated.  Use assistive_msgs-msg:center_px instead.")
  (center_px m))

(cl:ensure-generic-function 'tag_area_px-val :lambda-list '(m))
(cl:defmethod tag_area_px-val ((m <TagDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assistive_msgs-msg:tag_area_px-val is deprecated.  Use assistive_msgs-msg:tag_area_px instead.")
  (tag_area_px m))

(cl:ensure-generic-function 'detection_score-val :lambda-list '(m))
(cl:defmethod detection_score-val ((m <TagDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assistive_msgs-msg:detection_score-val is deprecated.  Use assistive_msgs-msg:detection_score instead.")
  (detection_score m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TagDetection>) ostream)
  "Serializes a message object of type '<TagDetection>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'corners_px))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'corners_px))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center_px) ostream)
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TagDetection>) istream)
  "Deserializes a message object of type '<TagDetection>"
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'corners_px) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'corners_px)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point32))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center_px) istream)
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TagDetection>)))
  "Returns string type for a message object of type '<TagDetection>"
  "assistive_msgs/TagDetection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TagDetection)))
  "Returns string type for a message object of type 'TagDetection"
  "assistive_msgs/TagDetection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TagDetection>)))
  "Returns md5sum for a message object of type '<TagDetection>"
  "be3ec919f3e7b8dc86da70562d16b37e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TagDetection)))
  "Returns md5sum for a message object of type 'TagDetection"
  "be3ec919f3e7b8dc86da70562d16b37e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TagDetection>)))
  "Returns full string definition for message of type '<TagDetection>"
  (cl:format cl:nil "int32 id~%string dictionary_name~%geometry_msgs/Point32[] corners_px~%geometry_msgs/Point32 center_px~%float32 tag_area_px~%float32 detection_score~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TagDetection)))
  "Returns full string definition for message of type 'TagDetection"
  (cl:format cl:nil "int32 id~%string dictionary_name~%geometry_msgs/Point32[] corners_px~%geometry_msgs/Point32 center_px~%float32 tag_area_px~%float32 detection_score~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TagDetection>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'dictionary_name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'corners_px) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center_px))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TagDetection>))
  "Converts a ROS message object to a list"
  (cl:list 'TagDetection
    (cl:cons ':id (id msg))
    (cl:cons ':dictionary_name (dictionary_name msg))
    (cl:cons ':corners_px (corners_px msg))
    (cl:cons ':center_px (center_px msg))
    (cl:cons ':tag_area_px (tag_area_px msg))
    (cl:cons ':detection_score (detection_score msg))
))
