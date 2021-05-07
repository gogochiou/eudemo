
(cl:in-package :asdf)

(defsystem "mission-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "mission_camera" :depends-on ("_package_mission_camera"))
    (:file "_package_mission_camera" :depends-on ("_package"))
  ))