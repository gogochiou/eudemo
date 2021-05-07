;; Auto-generated. Do not edit!


(when (boundp 'main2021::mission_srv)
  (if (not (find-package "MAIN2021"))
    (make-package "MAIN2021"))
  (shadow 'mission_srv (find-package "MAIN2021")))
(unless (find-package "MAIN2021::MISSION_SRV")
  (make-package "MAIN2021::MISSION_SRV"))
(unless (find-package "MAIN2021::MISSION_SRVREQUEST")
  (make-package "MAIN2021::MISSION_SRVREQUEST"))
(unless (find-package "MAIN2021::MISSION_SRVRESPONSE")
  (make-package "MAIN2021::MISSION_SRVRESPONSE"))

(in-package "ROS")





(defclass main2021::mission_srvRequest
  :super ros::object
  :slots (_action _action_pos _cup _hand ))

(defmethod main2021::mission_srvRequest
  (:init
   (&key
    ((:action __action) 0)
    ((:action_pos __action_pos) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:cup __cup) (make-array 0 :initial-element 0 :element-type :integer))
    ((:hand __hand) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _action (round __action))
   (setq _action_pos __action_pos)
   (setq _cup __cup)
   (setq _hand __hand)
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:action_pos
   (&optional __action_pos)
   (if __action_pos (setq _action_pos __action_pos)) _action_pos)
  (:cup
   (&optional __cup)
   (if __cup (setq _cup __cup)) _cup)
  (:hand
   (&optional __hand)
   (if __hand (setq _hand __hand)) _hand)
  (:serialization-length
   ()
   (+
    ;; int32 _action
    4
    ;; float32[] _action_pos
    (* 4    (length _action_pos)) 4
    ;; int32[] _cup
    (* 4    (length _cup)) 4
    ;; int32[] _hand
    (* 4    (length _hand)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _action
       (write-long _action s)
     ;; float32[] _action_pos
     (write-long (length _action_pos) s)
     (dotimes (i (length _action_pos))
       (sys::poke (elt _action_pos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32[] _cup
     (write-long (length _cup) s)
     (dotimes (i (length _cup))
       (write-long (elt _cup i) s)
       )
     ;; int32[] _hand
     (write-long (length _hand) s)
     (dotimes (i (length _hand))
       (write-long (elt _hand i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _action
     (setq _action (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _action_pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _action_pos (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _action_pos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int32[] _cup
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cup (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _cup i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _hand
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _hand (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _hand i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass main2021::mission_srvResponse
  :super ros::object
  :slots (_state ))

(defmethod main2021::mission_srvResponse
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

(defclass main2021::mission_srv
  :super ros::object
  :slots ())

(setf (get main2021::mission_srv :md5sum-) "bce17d4b6829904ca26b97013468df60")
(setf (get main2021::mission_srv :datatype-) "main2021/mission_srv")
(setf (get main2021::mission_srv :request) main2021::mission_srvRequest)
(setf (get main2021::mission_srv :response) main2021::mission_srvResponse)

(defmethod main2021::mission_srvRequest
  (:response () (instance main2021::mission_srvResponse :init)))

(setf (get main2021::mission_srvRequest :md5sum-) "bce17d4b6829904ca26b97013468df60")
(setf (get main2021::mission_srvRequest :datatype-) "main2021/mission_srvRequest")
(setf (get main2021::mission_srvRequest :definition-)
      "int32 action
float32[] action_pos
int32[] cup
int32[] hand
---
int32 state


")

(setf (get main2021::mission_srvResponse :md5sum-) "bce17d4b6829904ca26b97013468df60")
(setf (get main2021::mission_srvResponse :datatype-) "main2021/mission_srvResponse")
(setf (get main2021::mission_srvResponse :definition-)
      "int32 action
float32[] action_pos
int32[] cup
int32[] hand
---
int32 state


")



(provide :main2021/mission_srv "bce17d4b6829904ca26b97013468df60")


