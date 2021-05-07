;; Auto-generated. Do not edit!


(when (boundp 'main2021::maintomission)
  (if (not (find-package "MAIN2021"))
    (make-package "MAIN2021"))
  (shadow 'maintomission (find-package "MAIN2021")))
(unless (find-package "MAIN2021::MAINTOMISSION")
  (make-package "MAIN2021::MAINTOMISSION"))

(in-package "ROS")
;;//! \htmlinclude maintomission.msg.html


(defclass main2021::maintomission
  :super ros::object
  :slots (_team _action _planer_state _action_pos _cup _hand _reef _NS _emerg ))

(defmethod main2021::maintomission
  (:init
   (&key
    ((:team __team) 0)
    ((:action __action) 0)
    ((:planer_state __planer_state) 0)
    ((:action_pos __action_pos) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:cup __cup) (make-array 0 :initial-element 0 :element-type :integer))
    ((:hand __hand) (make-array 0 :initial-element 0 :element-type :integer))
    ((:reef __reef) (make-array 0 :initial-element 0 :element-type :integer))
    ((:NS __NS) nil)
    ((:emerg __emerg) nil)
    )
   (send-super :init)
   (setq _team (round __team))
   (setq _action (round __action))
   (setq _planer_state (round __planer_state))
   (setq _action_pos __action_pos)
   (setq _cup __cup)
   (setq _hand __hand)
   (setq _reef __reef)
   (setq _NS __NS)
   (setq _emerg __emerg)
   self)
  (:team
   (&optional __team)
   (if __team (setq _team __team)) _team)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:planer_state
   (&optional __planer_state)
   (if __planer_state (setq _planer_state __planer_state)) _planer_state)
  (:action_pos
   (&optional __action_pos)
   (if __action_pos (setq _action_pos __action_pos)) _action_pos)
  (:cup
   (&optional __cup)
   (if __cup (setq _cup __cup)) _cup)
  (:hand
   (&optional __hand)
   (if __hand (setq _hand __hand)) _hand)
  (:reef
   (&optional __reef)
   (if __reef (setq _reef __reef)) _reef)
  (:NS
   (&optional __NS)
   (if __NS (setq _NS __NS)) _NS)
  (:emerg
   (&optional __emerg)
   (if __emerg (setq _emerg __emerg)) _emerg)
  (:serialization-length
   ()
   (+
    ;; int32 _team
    4
    ;; int32 _action
    4
    ;; int32 _planer_state
    4
    ;; float32[] _action_pos
    (* 4    (length _action_pos)) 4
    ;; int32[] _cup
    (* 4    (length _cup)) 4
    ;; int32[] _hand
    (* 4    (length _hand)) 4
    ;; int32[] _reef
    (* 4    (length _reef)) 4
    ;; bool _NS
    1
    ;; bool _emerg
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _team
       (write-long _team s)
     ;; int32 _action
       (write-long _action s)
     ;; int32 _planer_state
       (write-long _planer_state s)
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
     ;; int32[] _reef
     (write-long (length _reef) s)
     (dotimes (i (length _reef))
       (write-long (elt _reef i) s)
       )
     ;; bool _NS
       (if _NS (write-byte -1 s) (write-byte 0 s))
     ;; bool _emerg
       (if _emerg (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _team
     (setq _team (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _action
     (setq _action (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _planer_state
     (setq _planer_state (sys::peek buf ptr- :integer)) (incf ptr- 4)
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
   ;; int32[] _reef
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reef (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _reef i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; bool _NS
     (setq _NS (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _emerg
     (setq _emerg (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get main2021::maintomission :md5sum-) "a6c4bebd0fdd628f3d960dc0cc16a1cf")
(setf (get main2021::maintomission :datatype-) "main2021/maintomission")
(setf (get main2021::maintomission :definition-)
      "int32 team
int32 action
int32 planer_state
float32[] action_pos
int32[] cup
int32[] hand
int32[] reef
bool NS
bool emerg

")



(provide :main2021/maintomission "a6c4bebd0fdd628f3d960dc0cc16a1cf")


