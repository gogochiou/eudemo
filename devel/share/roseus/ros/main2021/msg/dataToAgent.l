;; Auto-generated. Do not edit!


(when (boundp 'main2021::dataToAgent)
  (if (not (find-package "MAIN2021"))
    (make-package "MAIN2021"))
  (shadow 'dataToAgent (find-package "MAIN2021")))
(unless (find-package "MAIN2021::DATATOAGENT")
  (make-package "MAIN2021::DATATOAGENT"))

(in-package "ROS")
;;//! \htmlinclude dataToAgent.msg.html


(defclass main2021::dataToAgent
  :super ros::object
  :slots (_x _y _fx _fy _degree _action _action_list _cup_color _cup _script _ns _team _time _status ))

(defmethod main2021::dataToAgent
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:fx __fx) 0.0)
    ((:fy __fy) 0.0)
    ((:degree __degree) 0.0)
    ((:action __action) (make-array 0 :initial-element 0 :element-type :integer))
    ((:action_list __action_list) (make-array 0 :initial-element 0 :element-type :integer))
    ((:cup_color __cup_color) (make-array 0 :initial-element 0 :element-type :integer))
    ((:cup __cup) 0)
    ((:script __script) 0)
    ((:ns __ns) nil)
    ((:team __team) nil)
    ((:time __time) 0.0)
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _fx (float __fx))
   (setq _fy (float __fy))
   (setq _degree (float __degree))
   (setq _action __action)
   (setq _action_list __action_list)
   (setq _cup_color __cup_color)
   (setq _cup (round __cup))
   (setq _script (round __script))
   (setq _ns __ns)
   (setq _team __team)
   (setq _time (float __time))
   (setq _status (round __status))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:fx
   (&optional __fx)
   (if __fx (setq _fx __fx)) _fx)
  (:fy
   (&optional __fy)
   (if __fy (setq _fy __fy)) _fy)
  (:degree
   (&optional __degree)
   (if __degree (setq _degree __degree)) _degree)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:action_list
   (&optional __action_list)
   (if __action_list (setq _action_list __action_list)) _action_list)
  (:cup_color
   (&optional __cup_color)
   (if __cup_color (setq _cup_color __cup_color)) _cup_color)
  (:cup
   (&optional __cup)
   (if __cup (setq _cup __cup)) _cup)
  (:script
   (&optional __script)
   (if __script (setq _script __script)) _script)
  (:ns
   (&optional __ns)
   (if __ns (setq _ns __ns)) _ns)
  (:team
   (&optional __team)
   (if __team (setq _team __team)) _team)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _fx
    4
    ;; float32 _fy
    4
    ;; float32 _degree
    4
    ;; int32[] _action
    (* 4    (length _action)) 4
    ;; int32[] _action_list
    (* 4    (length _action_list)) 4
    ;; int32[] _cup_color
    (* 4    (length _cup_color)) 4
    ;; int32 _cup
    4
    ;; int32 _script
    4
    ;; bool _ns
    1
    ;; bool _team
    1
    ;; float32 _time
    4
    ;; int32 _status
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fx
       (sys::poke _fx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fy
       (sys::poke _fy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _degree
       (sys::poke _degree (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32[] _action
     (write-long (length _action) s)
     (dotimes (i (length _action))
       (write-long (elt _action i) s)
       )
     ;; int32[] _action_list
     (write-long (length _action_list) s)
     (dotimes (i (length _action_list))
       (write-long (elt _action_list i) s)
       )
     ;; int32[] _cup_color
     (write-long (length _cup_color) s)
     (dotimes (i (length _cup_color))
       (write-long (elt _cup_color i) s)
       )
     ;; int32 _cup
       (write-long _cup s)
     ;; int32 _script
       (write-long _script s)
     ;; bool _ns
       (if _ns (write-byte -1 s) (write-byte 0 s))
     ;; bool _team
       (if _team (write-byte -1 s) (write-byte 0 s))
     ;; float32 _time
       (sys::poke _time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _status
       (write-long _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fx
     (setq _fx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fy
     (setq _fy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _degree
     (setq _degree (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32[] _action
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _action (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _action i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _action_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _action_list (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _action_list i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _cup_color
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cup_color (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _cup_color i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32 _cup
     (setq _cup (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _script
     (setq _script (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _ns
     (setq _ns (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _team
     (setq _team (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _time
     (setq _time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get main2021::dataToAgent :md5sum-) "56de11d3f3dff1ceee2e16f5c9720d89")
(setf (get main2021::dataToAgent :datatype-) "main2021/dataToAgent")
(setf (get main2021::dataToAgent :definition-)
      "float32 x
float32 y
float32 fx
float32 fy
float32 degree
int32[] action
int32[] action_list
int32[] cup_color
int32 cup
int32 script
bool ns
bool team
float32 time
int32 status

")



(provide :main2021/dataToAgent "56de11d3f3dff1ceee2e16f5c9720d89")


