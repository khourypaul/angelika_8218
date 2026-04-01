
(cl:in-package :asdf)

(defsystem "assistive_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "State2D" :depends-on ("_package_State2D"))
    (:file "_package_State2D" :depends-on ("_package"))
    (:file "TagDepthObservation" :depends-on ("_package_TagDepthObservation"))
    (:file "_package_TagDepthObservation" :depends-on ("_package"))
    (:file "TagDepthObservationArray" :depends-on ("_package_TagDepthObservationArray"))
    (:file "_package_TagDepthObservationArray" :depends-on ("_package"))
    (:file "TagDetection" :depends-on ("_package_TagDetection"))
    (:file "_package_TagDetection" :depends-on ("_package"))
    (:file "TagDetectionArray" :depends-on ("_package_TagDetectionArray"))
    (:file "_package_TagDetectionArray" :depends-on ("_package"))
    (:file "TagPose" :depends-on ("_package_TagPose"))
    (:file "_package_TagPose" :depends-on ("_package"))
    (:file "TagPoseArray" :depends-on ("_package_TagPoseArray"))
    (:file "_package_TagPoseArray" :depends-on ("_package"))
  ))