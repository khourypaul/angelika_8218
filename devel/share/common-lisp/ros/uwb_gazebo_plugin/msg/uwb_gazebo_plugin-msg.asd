
(cl:in-package :asdf)

(defsystem "uwb_gazebo_plugin-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Ranging" :depends-on ("_package_Ranging"))
    (:file "_package_Ranging" :depends-on ("_package"))
  ))