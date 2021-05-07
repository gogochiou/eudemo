;; Auto-generated. Do not edit!


(when (boundp 'mission::mission_camera)
  (if (not (find-package "MISSION"))
    (make-package "MISSION"))
  (shadow 'mission_camera (find-package "MISSION")))
(unless (find-package "MISSION::MISSION_CAMERA")
  (make-package "MISSION::MISSION_CAMERA"))
(unless (find-package "MISSION::MISSION_CAMERAREQUEST")
  (make-package "MISSION::MISSION_CAMERAREQUEST"))
(unless (find-package "MISSION::MISSION_CAMERARESPONSE")
  (make-package "MISSION::MISSION_CAMERARESPONSE"))

(in-package "ROS")





(defclass mission::mission_cameraRequest
  :super ros::object
  :slots (_coordinate_mission _cup_color_mission ))

(defmethod mission::mission_cameraRequest
  (:init
   (&key
    ((:coordinate_mission __coordinate_mission) (make-array 0 :initial-element 0 :element-type :integer))
    ((:cup_color_mission __cup_color_mission) 0)
    )
   (send-super :init)
   (setq _coordinate_mission __coordinate_mission)
   (setq _cup_color_mission (round __cup_color_mission))
   self)
  (:coordinate_mission
   (&optional __coordinate_mission)
   (if __coordinate_mission (setq _coordinate_mission __coordinate_mission)) _coordinate_mission)
  (:cup_color_mission
   (&optional __cup_color_mission)
   (if __cup_color_mission (setq _cup_color_mission __cup_color_mission)) _cup_color_mission)
  (:serialization-length
   ()
   (+
    ;; int32[] _coordinate_mission
    (* 4    (length _coordinate_mission)) 4
    ;; int32 _cup_color_mission
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _coordinate_mission
     (write-long (length _coordinate_mission) s)
     (dotimes (i (length _coordinate_mission))
       (write-long (elt _coordinate_mission i) s)
       )
     ;; int32 _cup_color_mission
       (write-long _cup_color_mission s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _coordinate_mission
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _coordinate_mission (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _coordinate_mission i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32 _cup_color_mission
     (setq _cup_color_mission (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mission::mission_cameraResponse
  :super ros::object
  :slots (_coordinate_camera _cup_color_camera ))

(defmethod mission::mission_cameraResponse
  (:init
   (&key
    ((:coordinate_camera __coordinate_camera) (make-array 0 :initial-element 0 :element-type :integer))
    ((:cup_color_camera __cup_color_camera) 0)
    )
   (send-super :init)
   (setq _coordinate_camera __coordinate_camera)
   (setq _cup_color_camera (round __cup_color_camera))
   self)
  (:coordinate_camera
   (&optional __coordinate_camera)
   (if __coordinate_camera (setq _coordinate_camera __coordinate_camera)) _coordinate_camera)
  (:cup_color_camera
   (&optional __cup_color_camera)
   (if __cup_color_camera (setq _cup_color_camera __cup_color_camera)) _cup_color_camera)
  (:serialization-length
   ()
   (+
    ;; int32[] _coordinate_camera
    (* 4    (length _coordinate_camera)) 4
    ;; int32 _cup_color_camera
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _coordinate_camera
     (write-long (length _coordinate_camera) s)
     (dotimes (i (length _coordinate_camera))
       (write-long (elt _coordinate_camera i) s)
       )
     ;; int32 _cup_color_camera
       (write-long _cup_color_camera s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _coordinate_camera
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _coordinate_camera (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _coordinate_camera i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32 _cup_color_camera
     (setq _cup_color_camera (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mission::mission_camera
  :super ros::object
  :slots ())

(setf (get mission::mission_camera :md5sum-) "21a18da0693a50b6cde67125054bddd4")
(setf (get mission::mission_camera :datatype-) "mission/mission_camera")
(setf (get mission::mission_camera :request) mission::mission_cameraRequest)
(setf (get mission::mission_camera :response) mission::mission_cameraResponse)

(defmethod mission::mission_cameraRequest
  (:response () (instance mission::mission_cameraResponse :init)))

(setf (get mission::mission_cameraRequest :md5sum-) "21a18da0693a50b6cde67125054bddd4")
(setf (get mission::mission_cameraRequest :datatype-) "mission/mission_cameraRequest")
(setf (get mission::mission_cameraRequest :definition-)
      "int32[] coordinate_mission
int32 cup_color_mission
---
int32[] coordinate_camera
int32 cup_color_camera
")

(setf (get mission::mission_cameraResponse :md5sum-) "21a18da0693a50b6cde67125054bddd4")
(setf (get mission::mission_cameraResponse :datatype-) "mission/mission_cameraResponse")
(setf (get mission::mission_cameraResponse :definition-)
      "int32[] coordinate_mission
int32 cup_color_mission
---
int32[] coordinate_camera
int32 cup_color_camera
")



(provide :mission/mission_camera "21a18da0693a50b6cde67125054bddd4")


