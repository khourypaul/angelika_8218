;; Auto-generated. Do not edit!


(when (boundp 'assistive_msgs::TagDetection)
  (if (not (find-package "ASSISTIVE_MSGS"))
    (make-package "ASSISTIVE_MSGS"))
  (shadow 'TagDetection (find-package "ASSISTIVE_MSGS")))
(unless (find-package "ASSISTIVE_MSGS::TAGDETECTION")
  (make-package "ASSISTIVE_MSGS::TAGDETECTION"))

(in-package "ROS")
;;//! \htmlinclude TagDetection.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass assistive_msgs::TagDetection
  :super ros::object
  :slots (_id _dictionary_name _corners_px _center_px _tag_area_px _detection_score ))

(defmethod assistive_msgs::TagDetection
  (:init
   (&key
    ((:id __id) 0)
    ((:dictionary_name __dictionary_name) "")
    ((:corners_px __corners_px) ())
    ((:center_px __center_px) (instance geometry_msgs::Point32 :init))
    ((:tag_area_px __tag_area_px) 0.0)
    ((:detection_score __detection_score) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _dictionary_name (string __dictionary_name))
   (setq _corners_px __corners_px)
   (setq _center_px __center_px)
   (setq _tag_area_px (float __tag_area_px))
   (setq _detection_score (float __detection_score))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:dictionary_name
   (&optional __dictionary_name)
   (if __dictionary_name (setq _dictionary_name __dictionary_name)) _dictionary_name)
  (:corners_px
   (&rest __corners_px)
   (if (keywordp (car __corners_px))
       (send* _corners_px __corners_px)
     (progn
       (if __corners_px (setq _corners_px (car __corners_px)))
       _corners_px)))
  (:center_px
   (&rest __center_px)
   (if (keywordp (car __center_px))
       (send* _center_px __center_px)
     (progn
       (if __center_px (setq _center_px (car __center_px)))
       _center_px)))
  (:tag_area_px
   (&optional __tag_area_px)
   (if __tag_area_px (setq _tag_area_px __tag_area_px)) _tag_area_px)
  (:detection_score
   (&optional __detection_score)
   (if __detection_score (setq _detection_score __detection_score)) _detection_score)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; string _dictionary_name
    4 (length _dictionary_name)
    ;; geometry_msgs/Point32[] _corners_px
    (apply #'+ (send-all _corners_px :serialization-length)) 4
    ;; geometry_msgs/Point32 _center_px
    (send _center_px :serialization-length)
    ;; float32 _tag_area_px
    4
    ;; float32 _detection_score
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; string _dictionary_name
       (write-long (length _dictionary_name) s) (princ _dictionary_name s)
     ;; geometry_msgs/Point32[] _corners_px
     (write-long (length _corners_px) s)
     (dolist (elem _corners_px)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point32 _center_px
       (send _center_px :serialize s)
     ;; float32 _tag_area_px
       (sys::poke _tag_area_px (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _detection_score
       (sys::poke _detection_score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _dictionary_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _dictionary_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point32[] _corners_px
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _corners_px (let (r) (dotimes (i n) (push (instance geometry_msgs::Point32 :init) r)) r))
     (dolist (elem- _corners_px)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point32 _center_px
     (send _center_px :deserialize buf ptr-) (incf ptr- (send _center_px :serialization-length))
   ;; float32 _tag_area_px
     (setq _tag_area_px (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _detection_score
     (setq _detection_score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get assistive_msgs::TagDetection :md5sum-) "be3ec919f3e7b8dc86da70562d16b37e")
(setf (get assistive_msgs::TagDetection :datatype-) "assistive_msgs/TagDetection")
(setf (get assistive_msgs::TagDetection :definition-)
      "int32 id
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



(provide :assistive_msgs/TagDetection "be3ec919f3e7b8dc86da70562d16b37e")


