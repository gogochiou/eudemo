
(cl:in-package :asdf)

(defsystem "mission-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "maintomission" :depends-on ("_package_maintomission"))
    (:file "_package_maintomission" :depends-on ("_package"))
    (:file "missiontomain" :depends-on ("_package_missiontomain"))
    (:file "_package_missiontomain" :depends-on ("_package"))
  ))