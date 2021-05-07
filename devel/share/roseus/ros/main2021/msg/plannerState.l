;; Auto-generated. Do not edit!


(when (boundp 'main2021::plannerState)
  (if (not (find-package "MAIN2021"))
    (make-package "MAIN2021"))
  (shadow 'plannerState (find-package "MAIN2021")))
(unless (find-package "MAIN2021::PLANNERSTATE")
  (make-package "MAIN2021::PLANNERSTATE"))

(in-package "ROS")
;;//! \htmlinclude plannerState.msg.html


(defclass main2021::plannerState
  :super ros::object
  :slots (_plan_state ))

(defmethod main2021::plannerState
  (:init
   (&key
    ((:plan_state __plan_state) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _plan_state __plan_state)
   self)
  (:plan_state
   (&optional __plan_state)
   (if __plan_state (setq _plan_state __plan_state)) _plan_state)
  (:serialization-length
   ()
   (+
    ;; int32[] _plan_state
    (* 4    (length _plan_state)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _plan_state
     (write-long (length _plan_state) s)
     (dotimes (i (length _plan_state))
       (write-long (elt _plan_state i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _plan_state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _plan_state (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _plan_state i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get main2021::plannerState :md5sum-) "f66f0959567ef2a880883da8a8aff308")
(setf (get main2021::plannerState :datatype-) "main2021/plannerState")
(setf (get main2021::plannerState :definition-)
      "int32[] plan_state


")



(provide :main2021/plannerState "f66f0959567ef2a880883da8a8aff308")


