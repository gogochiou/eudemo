;; Auto-generated. Do not edit!


(when (boundp 'main2021::goap_srv)
  (if (not (find-package "MAIN2021"))
    (make-package "MAIN2021"))
  (shadow 'goap_srv (find-package "MAIN2021")))
(unless (find-package "MAIN2021::GOAP_SRV")
  (make-package "MAIN2021::GOAP_SRV"))
(unless (find-package "MAIN2021::GOAP_SRVREQUEST")
  (make-package "MAIN2021::GOAP_SRVREQUEST"))
(unless (find-package "MAIN2021::GOAP_SRVRESPONSE")
  (make-package "MAIN2021::GOAP_SRVRESPONSE"))

(in-package "ROS")





(defclass main2021::goap_srvRequest
  :super ros::object
  :slots (_my_pos _friend_pos _ns _emergency _team _time _friend_action _action_list _cup_color _cup _hand _enemy1_pos _enemy2_pos _strategy ))

(defmethod main2021::goap_srvRequest
  (:init
   (&key
    ((:my_pos __my_pos) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:friend_pos __friend_pos) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:ns __ns) nil)
    ((:emergency __emergency) nil)
    ((:team __team) nil)
    ((:time __time) 0.0)
    ((:friend_action __friend_action) (make-array 0 :initial-element 0 :element-type :integer))
    ((:action_list __action_list) (make-array 0 :initial-element 0 :element-type :integer))
    ((:cup_color __cup_color) (make-array 0 :initial-element 0 :element-type :integer))
    ((:cup __cup) 0)
    ((:hand __hand) (make-array 0 :initial-element 0 :element-type :integer))
    ((:enemy1_pos __enemy1_pos) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:enemy2_pos __enemy2_pos) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:strategy __strategy) 0)
    )
   (send-super :init)
   (setq _my_pos __my_pos)
   (setq _friend_pos __friend_pos)
   (setq _ns __ns)
   (setq _emergency __emergency)
   (setq _team __team)
   (setq _time (float __time))
   (setq _friend_action __friend_action)
   (setq _action_list __action_list)
   (setq _cup_color __cup_color)
   (setq _cup (round __cup))
   (setq _hand __hand)
   (setq _enemy1_pos __enemy1_pos)
   (setq _enemy2_pos __enemy2_pos)
   (setq _strategy (round __strategy))
   self)
  (:my_pos
   (&optional __my_pos)
   (if __my_pos (setq _my_pos __my_pos)) _my_pos)
  (:friend_pos
   (&optional __friend_pos)
   (if __friend_pos (setq _friend_pos __friend_pos)) _friend_pos)
  (:ns
   (&optional __ns)
   (if __ns (setq _ns __ns)) _ns)
  (:emergency
   (&optional __emergency)
   (if __emergency (setq _emergency __emergency)) _emergency)
  (:team
   (&optional __team)
   (if __team (setq _team __team)) _team)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:friend_action
   (&optional __friend_action)
   (if __friend_action (setq _friend_action __friend_action)) _friend_action)
  (:action_list
   (&optional __action_list)
   (if __action_list (setq _action_list __action_list)) _action_list)
  (:cup_color
   (&optional __cup_color)
   (if __cup_color (setq _cup_color __cup_color)) _cup_color)
  (:cup
   (&optional __cup)
   (if __cup (setq _cup __cup)) _cup)
  (:hand
   (&optional __hand)
   (if __hand (setq _hand __hand)) _hand)
  (:enemy1_pos
   (&optional __enemy1_pos)
   (if __enemy1_pos (setq _enemy1_pos __enemy1_pos)) _enemy1_pos)
  (:enemy2_pos
   (&optional __enemy2_pos)
   (if __enemy2_pos (setq _enemy2_pos __enemy2_pos)) _enemy2_pos)
  (:strategy
   (&optional __strategy)
   (if __strategy (setq _strategy __strategy)) _strategy)
  (:serialization-length
   ()
   (+
    ;; float32[] _my_pos
    (* 4    (length _my_pos)) 4
    ;; float32[] _friend_pos
    (* 4    (length _friend_pos)) 4
    ;; bool _ns
    1
    ;; bool _emergency
    1
    ;; bool _team
    1
    ;; float32 _time
    4
    ;; int32[] _friend_action
    (* 4    (length _friend_action)) 4
    ;; int32[] _action_list
    (* 4    (length _action_list)) 4
    ;; int32[] _cup_color
    (* 4    (length _cup_color)) 4
    ;; int32 _cup
    4
    ;; int32[] _hand
    (* 4    (length _hand)) 4
    ;; float32[] _enemy1_pos
    (* 4    (length _enemy1_pos)) 4
    ;; float32[] _enemy2_pos
    (* 4    (length _enemy2_pos)) 4
    ;; int32 _strategy
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _my_pos
     (write-long (length _my_pos) s)
     (dotimes (i (length _my_pos))
       (sys::poke (elt _my_pos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _friend_pos
     (write-long (length _friend_pos) s)
     (dotimes (i (length _friend_pos))
       (sys::poke (elt _friend_pos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; bool _ns
       (if _ns (write-byte -1 s) (write-byte 0 s))
     ;; bool _emergency
       (if _emergency (write-byte -1 s) (write-byte 0 s))
     ;; bool _team
       (if _team (write-byte -1 s) (write-byte 0 s))
     ;; float32 _time
       (sys::poke _time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32[] _friend_action
     (write-long (length _friend_action) s)
     (dotimes (i (length _friend_action))
       (write-long (elt _friend_action i) s)
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
     ;; int32[] _hand
     (write-long (length _hand) s)
     (dotimes (i (length _hand))
       (write-long (elt _hand i) s)
       )
     ;; float32[] _enemy1_pos
     (write-long (length _enemy1_pos) s)
     (dotimes (i (length _enemy1_pos))
       (sys::poke (elt _enemy1_pos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _enemy2_pos
     (write-long (length _enemy2_pos) s)
     (dotimes (i (length _enemy2_pos))
       (sys::poke (elt _enemy2_pos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32 _strategy
       (write-long _strategy s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _my_pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _my_pos (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _my_pos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _friend_pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _friend_pos (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _friend_pos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; bool _ns
     (setq _ns (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _emergency
     (setq _emergency (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _team
     (setq _team (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _time
     (setq _time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32[] _friend_action
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _friend_action (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _friend_action i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
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
   ;; int32[] _hand
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _hand (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _hand i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32[] _enemy1_pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _enemy1_pos (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _enemy1_pos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _enemy2_pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _enemy2_pos (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _enemy2_pos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int32 _strategy
     (setq _strategy (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass main2021::goap_srvResponse
  :super ros::object
  :slots (_action _position _cup ))

(defmethod main2021::goap_srvResponse
  (:init
   (&key
    ((:action __action) (make-array 0 :initial-element 0 :element-type :integer))
    ((:position __position) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:cup __cup) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _action __action)
   (setq _position __position)
   (setq _cup __cup)
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:cup
   (&optional __cup)
   (if __cup (setq _cup __cup)) _cup)
  (:serialization-length
   ()
   (+
    ;; int32[] _action
    (* 4    (length _action)) 4
    ;; float32[] _position
    (* 4    (length _position)) 4
    ;; int32[] _cup
    (* 4    (length _cup)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _action
     (write-long (length _action) s)
     (dotimes (i (length _action))
       (write-long (elt _action i) s)
       )
     ;; float32[] _position
     (write-long (length _position) s)
     (dotimes (i (length _position))
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32[] _cup
     (write-long (length _cup) s)
     (dotimes (i (length _cup))
       (write-long (elt _cup i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _action
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _action (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _action i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32[] _position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int32[] _cup
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cup (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _cup i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass main2021::goap_srv
  :super ros::object
  :slots ())

(setf (get main2021::goap_srv :md5sum-) "93ddba8ccf100824f0cb0d18004bda97")
(setf (get main2021::goap_srv :datatype-) "main2021/goap_srv")
(setf (get main2021::goap_srv :request) main2021::goap_srvRequest)
(setf (get main2021::goap_srv :response) main2021::goap_srvResponse)

(defmethod main2021::goap_srvRequest
  (:response () (instance main2021::goap_srvResponse :init)))

(setf (get main2021::goap_srvRequest :md5sum-) "93ddba8ccf100824f0cb0d18004bda97")
(setf (get main2021::goap_srvRequest :datatype-) "main2021/goap_srvRequest")
(setf (get main2021::goap_srvRequest :definition-)
      "float32[] my_pos
float32[] friend_pos
bool ns
bool emergency
bool team
float32 time
int32[] friend_action
int32[] action_list
int32[] cup_color
int32 cup
int32[] hand
float32[] enemy1_pos
float32[] enemy2_pos
int32 strategy
---
int32[] action
float32[] position
int32[] cup

")

(setf (get main2021::goap_srvResponse :md5sum-) "93ddba8ccf100824f0cb0d18004bda97")
(setf (get main2021::goap_srvResponse :datatype-) "main2021/goap_srvResponse")
(setf (get main2021::goap_srvResponse :definition-)
      "float32[] my_pos
float32[] friend_pos
bool ns
bool emergency
bool team
float32 time
int32[] friend_action
int32[] action_list
int32[] cup_color
int32 cup
int32[] hand
float32[] enemy1_pos
float32[] enemy2_pos
int32 strategy
---
int32[] action
float32[] position
int32[] cup

")



(provide :main2021/goap_srv "93ddba8ccf100824f0cb0d18004bda97")


