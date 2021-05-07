;; Auto-generated. Do not edit!


(when (boundp 'main2021::missiontomain)
  (if (not (find-package "MAIN2021"))
    (make-package "MAIN2021"))
  (shadow 'missiontomain (find-package "MAIN2021")))
(unless (find-package "MAIN2021::MISSIONTOMAIN")
  (make-package "MAIN2021::MISSIONTOMAIN"))

(in-package "ROS")
;;//! \htmlinclude missiontomain.msg.html


(defclass main2021::missiontomain
  :super ros::object
  :slots (_state ))

(defmethod main2021::missiontomain
  (:init
   (&key
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _state (round __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; int32 _state
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _state
       (write-long _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _state
     (setq _state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get main2021::missiontomain :md5sum-) "7a2f37ef2ba405f0c7a15cc72663d6f0")
(setf (get main2021::missiontomain :datatype-) "main2021/missiontomain")
(setf (get main2021::missiontomain :definition-)
      "int32 state
")



(provide :main2021/missiontomain "7a2f37ef2ba405f0c7a15cc72663d6f0")


