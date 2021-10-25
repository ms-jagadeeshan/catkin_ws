
(cl:in-package :asdf)

(defsystem "robotico-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "string_msg" :depends-on ("_package_string_msg"))
    (:file "_package_string_msg" :depends-on ("_package"))
  ))