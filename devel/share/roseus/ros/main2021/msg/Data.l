;; Auto-generated. Do not edit!


(when (boundp 'main2021::Data)
  (if (not (find-package "MAIN2021"))
    (make-package "MAIN2021"))
  (shadow 'Data (find-package "MAIN2021")))
(unless (find-package "MAIN2021::DATA")
  (make-package "MAIN2021::DATA"))

(in-package "ROS")
;;//! \htmlinclude Data.msg.html


(defclass main2021::Data
  :super ros::object
  :slots (_big_chicken_pos _small_chicken_pos _big_action _small_action _big_action_list _small_action_list _big_cup _small_cup _team _status _small_score _big_score ))

(defmethod main2021::Data
  (:init
   (&key
    ((:big_chicken_pos __big_chicken_pos) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:small_chicken_pos __small_chicken_pos) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:big_action __big_action) (make-array 0 :initial-element 0 :element-type :integer))
    ((:small_action __small_action) (make-array 0 :initial-element 0 :element-type :integer))
    ((:big_action_list __big_action_list) (make-array 0 :initial-element 0 :element-type :integer))
    ((:small_action_list __small_action_list) (make-array 0 :initial-element 0 :element-type :integer))
    ((:big_cup __big_cup) 0)
    ((:small_cup __small_cup) 0)
    ((:team __team) nil)
    ((:status __status) 0)
    ((:small_score __small_score) 0)
    ((:big_score __big_score) 0)
    )
   (send-super :init)
   (setq _big_chicken_pos __big_chicken_pos)
   (setq _small_chicken_pos __small_chicken_pos)
   (setq _big_action __big_action)
   (setq _small_action __small_action)
   (setq _big_action_list __big_action_list)
   (setq _small_action_list __small_action_list)
   (setq _big_cup (round __big_cup))
   (setq _small_cup (round __small_cup))
   (setq _team __team)
   (setq _status (round __status))
   (setq _small_score (round __small_score))
   (setq _big_score (round __big_score))
   self)
  (:big_chicken_pos
   (&optional __big_chicken_pos)
   (if __big_chicken_pos (setq _big_chicken_pos __big_chicken_pos)) _big_chicken_pos)
  (:small_chicken_pos
   (&optional __small_chicken_pos)
   (if __small_chicken_pos (setq _small_chicken_pos __small_chicken_pos)) _small_chicken_pos)
  (:big_action
   (&optional __big_action)
   (if __big_action (setq _big_action __big_action)) _big_action)
  (:small_action
   (&optional __small_action)
   (if __small_action (setq _small_action __small_action)) _small_action)
  (:big_action_list
   (&optional __big_action_list)
   (if __big_action_list (setq _big_action_list __big_action_list)) _big_action_list)
  (:small_action_list
   (&optional __small_action_list)
   (if __small_action_list (setq _small_action_list __small_action_list)) _small_action_list)
  (:big_cup
   (&optional __big_cup)
   (if __big_cup (setq _big_cup __big_cup)) _big_cup)
  (:small_cup
   (&optional __small_cup)
   (if __small_cup (setq _small_cup __small_cup)) _small_cup)
  (:team
   (&optional __team)
   (if __team (setq _team __team)) _team)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:small_score
   (&optional __small_score)
   (if __small_score (setq _small_score __small_score)) _small_score)
  (:big_score
   (&optional __big_score)
   (if __big_score (setq _big_score __big_score)) _big_score)
  (:serialization-length
   ()
   (+
    ;; float32[] _big_chicken_pos
    (* 4    (length _big_chicken_pos)) 4
    ;; float32[] _small_chicken_pos
    (* 4    (length _small_chicken_pos)) 4
    ;; int32[] _big_action
    (* 4    (length _big_action)) 4
    ;; int32[] _small_action
    (* 4    (length _small_action)) 4
    ;; int32[] _big_action_list
    (* 4    (length _big_action_list)) 4
    ;; int32[] _small_action_list
    (* 4    (length _small_action_list)) 4
    ;; int32 _big_cup
    4
    ;; int32 _small_cup
    4
    ;; bool _team
    1
    ;; int32 _status
    4
    ;; int32 _small_score
    4
    ;; int32 _big_score
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _big_chicken_pos
     (write-long (length _big_chicken_pos) s)
     (dotimes (i (length _big_chicken_pos))
       (sys::poke (elt _big_chicken_pos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _small_chicken_pos
     (write-long (length _small_chicken_pos) s)
     (dotimes (i (length _small_chicken_pos))
       (sys::poke (elt _small_chicken_pos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32[] _big_action
     (write-long (length _big_action) s)
     (dotimes (i (length _big_action))
       (write-long (elt _big_action i) s)
       )
     ;; int32[] _small_action
     (write-long (length _small_action) s)
     (dotimes (i (length _small_action))
       (write-long (elt _small_action i) s)
       )
     ;; int32[] _big_action_list
     (write-long (length _big_action_list) s)
     (dotimes (i (length _big_action_list))
       (write-long (elt _big_action_list i) s)
       )
     ;; int32[] _small_action_list
     (write-long (length _small_action_list) s)
     (dotimes (i (length _small_action_list))
       (write-long (elt _small_action_list i) s)
       )
     ;; int32 _big_cup
       (write-long _big_cup s)
     ;; int32 _small_cup
       (write-long _small_cup s)
     ;; bool _team
       (if _team (write-byte -1 s) (write-byte 0 s))
     ;; int32 _status
       (write-long _status s)
     ;; int32 _small_score
       (write-long _small_score s)
     ;; int32 _big_score
       (write-long _big_score s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _big_chicken_pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _big_chicken_pos (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _big_chicken_pos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _small_chicken_pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _small_chicken_pos (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _small_chicken_pos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int32[] _big_action
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _big_action (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _big_action i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _small_action
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _small_action (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _small_action i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _big_action_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _big_action_list (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _big_action_list i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _small_action_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _small_action_list (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _small_action_list i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32 _big_cup
     (setq _big_cup (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _small_cup
     (setq _small_cup (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _team
     (setq _team (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _small_score
     (setq _small_score (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _big_score
     (setq _big_score (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get main2021::Data :md5sum-) "a4e5f8be870de6fe33323461ba490ff0")
(setf (get main2021::Data :datatype-) "main2021/Data")
(setf (get main2021::Data :definition-)
      "float32[] big_chicken_pos
float32[] small_chicken_pos
int32[] big_action
int32[] small_action
int32[] big_action_list
int32[] small_action_list
int32 big_cup
int32 small_cup
bool team
int32 status
int32 small_score
int32 big_score


")



(provide :main2021/Data "a4e5f8be870de6fe33323461ba490ff0")


