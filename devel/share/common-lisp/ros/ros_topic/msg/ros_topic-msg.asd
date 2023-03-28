
(cl:in-package :asdf)

(defsystem "ros_topic-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "demo" :depends-on ("_package_demo"))
    (:file "_package_demo" :depends-on ("_package"))
  ))