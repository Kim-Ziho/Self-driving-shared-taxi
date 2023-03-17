
(cl:in-package :asdf)

(defsystem "ssafy_2-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AddTwoInts" :depends-on ("_package_AddTwoInts"))
    (:file "_package_AddTwoInts" :depends-on ("_package"))
    (:file "GpsService" :depends-on ("_package_GpsService"))
    (:file "_package_GpsService" :depends-on ("_package"))
  ))