;; Auto-generated. Do not edit!


(when (boundp 'main2021::cup)
  (if (not (find-package "MAIN2021"))
    (make-package "MAIN2021"))
  (shadow 'cup (find-package "MAIN2021")))
(unless (find-package "MAIN2021::CUP")
  (make-package "MAIN2021::CUP"))
(unless (find-package "MAIN2021::CUPREQUEST")
  (make-package "MAIN2021::CUPREQUEST"))
(unless (find-package "MAIN2021::CUPRESPONSE")
  (make-package "MAIN2021::CUPRESPONSE"))

(in-package "ROS")





(defclass main2021::cupRequest
  :super ros::object
  :slots (_ask_cup ))

(defmethod main2021::cupRequest
  (:init
   (&key
    ((:ask_cup __ask_cup) 0)
    )
   (send-super :init)
   (setq _ask_cup (round __ask_cup))
   self)
  (:ask_cup
   (&optional __ask_cup)
   (if __ask_cup (setq _ask_cup __ask_cup)) _ask_cup)
  (:serialization-length
   ()
   (+
    ;; int32 _ask_cup
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _ask_cup
       (write-long _ask_cup s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _ask_cup
     (setq _ask_cup (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass main2021::cupResponse
  :super ros::object
  :slots (_cup_result ))

(defmethod main2021::cupResponse
  (:init
   (&key
    ((:cup_result __cup_result) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _cup_result __cup_result)
   self)
  (:cup_result
   (&optional __cup_result)
   (if __cup_result (setq _cup_result __cup_result)) _cup_result)
  (:serialization-length
   ()
   (+
    ;; int32[] _cup_result
    (* 4    (length _cup_result)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _cup_result
     (write-long (length _cup_result) s)
     (dotimes (i (length _cup_result))
       (write-long (elt _cup_result i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _cup_result
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cup_result (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _cup_result i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass main2021::cup
  :super ros::object
  :slots ())

(setf (get main2021::cup :md5sum-) "1ba64ca04594ee6db0df538fffb0ec78")
(setf (get main2021::cup :datatype-) "main2021/cup")
(setf (get main2021::cup :request) main2021::cupRequest)
(setf (get main2021::cup :response) main2021::cupResponse)

(defmethod main2021::cupRequest
  (:response () (instance main2021::cupResponse :init)))

(setf (get main2021::cupRequest :md5sum-) "1ba64ca04594ee6db0df538fffb0ec78")
(setf (get main2021::cupRequest :datatype-) "main2021/cupRequest")
(setf (get main2021::cupRequest :definition-)
      "int32 ask_cup
---
int32[] cup_result

")

(setf (get main2021::cupResponse :md5sum-) "1ba64ca04594ee6db0df538fffb0ec78")
(setf (get main2021::cupResponse :datatype-) "main2021/cupResponse")
(setf (get main2021::cupResponse :definition-)
      "int32 ask_cup
---
int32[] cup_result

")



(provide :main2021/cup "1ba64ca04594ee6db0df538fffb0ec78")


