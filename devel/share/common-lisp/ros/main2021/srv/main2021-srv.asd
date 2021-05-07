
(cl:in-package :asdf)

(defsystem "main2021-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "cup" :depends-on ("_package_cup"))
    (:file "_package_cup" :depends-on ("_package"))
    (:file "cup_camera" :depends-on ("_package_cup_camera"))
    (:file "_package_cup_camera" :depends-on ("_package"))
    (:file "goap_srv" :depends-on ("_package_goap_srv"))
    (:file "_package_goap_srv" :depends-on ("_package"))
    (:file "mission_srv" :depends-on ("_package_mission_srv"))
    (:file "_package_mission_srv" :depends-on ("_package"))
    (:file "ns" :depends-on ("_package_ns"))
    (:file "_package_ns" :depends-on ("_package"))
  ))