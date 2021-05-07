;; Auto-generated. Do not edit!


(when (boundp 'main2021::position)
  (if (not (find-package "MAIN2021"))
    (make-package "MAIN2021"))
  (shadow 'position (find-package "MAIN2021")))
(unless (find-package "MAIN2021::POSITION")
  (make-package "MAIN2021::POSITION"))

(in-package "ROS")
;;//! \htmlinclude position.msg.html


(defclass main2021::position
  :super ros::object
  :slots (_my_x _my_y _my_z _my_degreex _my_degreey _my_degreez _my_degreew ))

(defmethod main2021::position
  (:init
   (&key
    ((:my_x __my_x) 0.0)
    ((:my_y __my_y) 0.0)
    ((:my_z __my_z) 0.0)
    ((:my_degreex __my_degreex) 0.0)
    ((:my_degreey __my_degreey) 0.0)
    ((:my_degreez __my_degreez) 0.0)
    ((:my_degreew __my_degreew) 0.0)
    )
   (send-super :init)
   (setq _my_x (float __my_x))
   (setq _my_y (float __my_y))
   (setq _my_z (float __my_z))
   (setq _my_degreex (float __my_degreex))
   (setq _my_degreey (float __my_degreey))
   (setq _my_degreez (float __my_degreez))
   (setq _my_degreew (float __my_degreew))
   self)
  (:my_x
   (&optional __my_x)
   (if __my_x (setq _my_x __my_x)) _my_x)
  (:my_y
   (&optional __my_y)
   (if __my_y (setq _my_y __my_y)) _my_y)
  (:my_z
   (&optional __my_z)
   (if __my_z (setq _my_z __my_z)) _my_z)
  (:my_degreex
   (&optional __my_degreex)
   (if __my_degreex (setq _my_degreex __my_degreex)) _my_degreex)
  (:my_degreey
   (&optional __my_degreey)
   (if __my_degreey (setq _my_degreey __my_degreey)) _my_degreey)
  (:my_degreez
   (&optional __my_degreez)
   (if __my_degreez (setq _my_degreez __my_degreez)) _my_degreez)
  (:my_degreew
   (&optional __my_degreew)
   (if __my_degreew (setq _my_degreew __my_degreew)) _my_degreew)
  (:serialization-length
   ()
   (+
    ;; float32 _my_x
    4
    ;; float32 _my_y
    4
    ;; float32 _my_z
    4
    ;; float32 _my_degreex
    4
    ;; float32 _my_degreey
    4
    ;; float32 _my_degreez
    4
    ;; float32 _my_degreew
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _my_x
       (sys::poke _my_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _my_y
       (sys::poke _my_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _my_z
       (sys::poke _my_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _my_degreex
       (sys::poke _my_degreex (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _my_degreey
       (sys::poke _my_degreey (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _my_degreez
       (sys::poke _my_degreez (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _my_degreew
       (sys::poke _my_degreew (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _my_x
     (setq _my_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _my_y
     (setq _my_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _my_z
     (setq _my_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _my_degreex
     (setq _my_degreex (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _my_degreey
     (setq _my_degreey (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _my_degreez
     (setq _my_degreez (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _my_degreew
     (setq _my_degreew (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get main2021::position :md5sum-) "04836b89de39e862e20e94175e8fc855")
(setf (get main2021::position :datatype-) "main2021/position")
(setf (get main2021::position :definition-)
      "float32 my_x
float32 my_y
float32 my_z
float32 my_degreex
float32 my_degreey
float32 my_degreez
float32 my_degreew

")



(provide :main2021/position "04836b89de39e862e20e94175e8fc855")


