
(cl:in-package :asdf)

(defsystem "robair_simulation-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "collision_event" :depends-on ("_package_collision_event"))
    (:file "_package_collision_event" :depends-on ("_package"))
  ))