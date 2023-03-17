
(cl:in-package :asdf)

(defsystem "ssafy_2-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "mvp" :depends-on ("_package_mvp"))
    (:file "_package_mvp" :depends-on ("_package"))
    (:file "student" :depends-on ("_package_student"))
    (:file "_package_student" :depends-on ("_package"))
  ))