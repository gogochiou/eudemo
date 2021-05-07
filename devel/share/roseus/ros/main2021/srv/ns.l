;; Auto-generated. Do not edit!


(when (boundp 'main2021::ns)
  (if (not (find-package "MAIN2021"))
    (make-package "MAIN2021"))
  (shadow 'ns (find-package "MAIN2021")))
(unless (find-package "MAIN2021::NS")
  (make-package "MAIN2021::NS"))
(unless (find-package "MAIN2021::NSREQUEST")
  (make-package "MAIN2021::NSREQUEST"))
(unless (find-package "MAIN2021::NSRESPONSE")
  (make-package "MAIN2021::NSRESPONSE"))

(in-package "ROS")





(defclass main2021::nsRequest
  :super ros::object
  :slots (_ask_ns ))

(defmethod main2021::nsRequest
  (:init
   (&key
    ((:ask_ns __ask_ns) 0)
    )
   (send-super :init)
   (setq _ask_ns (round __ask_ns))
   self)
  (:ask_ns
   (&optional __ask_ns)
   (if __ask_ns (setq _ask_ns __ask_ns)) _ask_ns)
  (:serialization-length
   ()
   (+
    ;; int32 _ask_ns
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _ask_ns
       (write-long _ask_ns s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _ask_ns
     (setq _ask_ns (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass main2021::nsResponse
  :super ros::object
  :slots (_ns_result ))

(defmethod main2021::nsResponse
  (:init
   (&key
    ((:ns_result __ns_result) 0)
    )
   (send-super :init)
   (setq _ns_result (round __ns_result))
   self)
  (:ns_result
   (&optional __ns_result)
   (if __ns_result (setq _ns_result __ns_result)) _ns_result)
  (:serialization-length
   ()
   (+
    ;; int32 _ns_result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _ns_result
       (write-long _ns_result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _ns_result
     (setq _ns_result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass main2021::ns
  :super ros::object
  :slots ())

(setf (get main2021::ns :md5sum-) "6db1d56b21aeaaf74af61c1e66674fb6")
(setf (get main2021::ns :datatype-) "main2021/ns")
(setf (get main2021::ns :request) main2021::nsRequest)
(setf (get main2021::ns :response) main2021::nsResponse)

(defmethod main2021::nsRequest
  (:response () (instance main2021::nsResponse :init)))

(setf (get main2021::nsRequest :md5sum-) "6db1d56b21aeaaf74af61c1e66674fb6")
(setf (get main2021::nsRequest :datatype-) "main2021/nsRequest")
(setf (get main2021::nsRequest :definition-)
      "int32 ask_ns
---
int32 ns_result

")

(setf (get main2021::nsResponse :md5sum-) "6db1d56b21aeaaf74af61c1e66674fb6")
(setf (get main2021::nsResponse :datatype-) "main2021/nsResponse")
(setf (get main2021::nsResponse :definition-)
      "int32 ask_ns
---
int32 ns_result

")



(provide :main2021/ns "6db1d56b21aeaaf74af61c1e66674fb6")


