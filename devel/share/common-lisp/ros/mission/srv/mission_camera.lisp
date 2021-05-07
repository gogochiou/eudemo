; Auto-generated. Do not edit!


(cl:in-package mission-srv)


;//! \htmlinclude mission_camera-request.msg.html

(cl:defclass <mission_camera-request> (roslisp-msg-protocol:ros-message)
  ((coordinate_mission
    :reader coordinate_mission
    :initarg :coordinate_mission
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (cup_color_mission
    :reader cup_color_mission
    :initarg :cup_color_mission
    :type cl:integer
    :initform 0))
)

(cl:defclass mission_camera-request (<mission_camera-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mission_camera-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mission_camera-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mission-srv:<mission_camera-request> is deprecated: use mission-srv:mission_camera-request instead.")))

(cl:ensure-generic-function 'coordinate_mission-val :lambda-list '(m))
(cl:defmethod coordinate_mission-val ((m <mission_camera-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mission-srv:coordinate_mission-val is deprecated.  Use mission-srv:coordinate_mission instead.")
  (coordinate_mission m))

(cl:ensure-generic-function 'cup_color_mission-val :lambda-list '(m))
(cl:defmethod cup_color_mission-val ((m <mission_camera-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mission-srv:cup_color_mission-val is deprecated.  Use mission-srv:cup_color_mission instead.")
  (cup_color_mission m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mission_camera-request>) ostream)
  "Serializes a message object of type '<mission_camera-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'coordinate_mission))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'coordinate_mission))
  (cl:let* ((signed (cl:slot-value msg 'cup_color_mission)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mission_camera-request>) istream)
  "Deserializes a message object of type '<mission_camera-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'coordinate_mission) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'coordinate_mission)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cup_color_mission) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mission_camera-request>)))
  "Returns string type for a service object of type '<mission_camera-request>"
  "mission/mission_cameraRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mission_camera-request)))
  "Returns string type for a service object of type 'mission_camera-request"
  "mission/mission_cameraRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mission_camera-request>)))
  "Returns md5sum for a message object of type '<mission_camera-request>"
  "21a18da0693a50b6cde67125054bddd4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mission_camera-request)))
  "Returns md5sum for a message object of type 'mission_camera-request"
  "21a18da0693a50b6cde67125054bddd4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mission_camera-request>)))
  "Returns full string definition for message of type '<mission_camera-request>"
  (cl:format cl:nil "int32[] coordinate_mission~%int32 cup_color_mission~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mission_camera-request)))
  "Returns full string definition for message of type 'mission_camera-request"
  (cl:format cl:nil "int32[] coordinate_mission~%int32 cup_color_mission~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mission_camera-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'coordinate_mission) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mission_camera-request>))
  "Converts a ROS message object to a list"
  (cl:list 'mission_camera-request
    (cl:cons ':coordinate_mission (coordinate_mission msg))
    (cl:cons ':cup_color_mission (cup_color_mission msg))
))
;//! \htmlinclude mission_camera-response.msg.html

(cl:defclass <mission_camera-response> (roslisp-msg-protocol:ros-message)
  ((coordinate_camera
    :reader coordinate_camera
    :initarg :coordinate_camera
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (cup_color_camera
    :reader cup_color_camera
    :initarg :cup_color_camera
    :type cl:integer
    :initform 0))
)

(cl:defclass mission_camera-response (<mission_camera-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mission_camera-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mission_camera-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mission-srv:<mission_camera-response> is deprecated: use mission-srv:mission_camera-response instead.")))

(cl:ensure-generic-function 'coordinate_camera-val :lambda-list '(m))
(cl:defmethod coordinate_camera-val ((m <mission_camera-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mission-srv:coordinate_camera-val is deprecated.  Use mission-srv:coordinate_camera instead.")
  (coordinate_camera m))

(cl:ensure-generic-function 'cup_color_camera-val :lambda-list '(m))
(cl:defmethod cup_color_camera-val ((m <mission_camera-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mission-srv:cup_color_camera-val is deprecated.  Use mission-srv:cup_color_camera instead.")
  (cup_color_camera m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mission_camera-response>) ostream)
  "Serializes a message object of type '<mission_camera-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'coordinate_camera))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'coordinate_camera))
  (cl:let* ((signed (cl:slot-value msg 'cup_color_camera)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mission_camera-response>) istream)
  "Deserializes a message object of type '<mission_camera-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'coordinate_camera) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'coordinate_camera)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cup_color_camera) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mission_camera-response>)))
  "Returns string type for a service object of type '<mission_camera-response>"
  "mission/mission_cameraResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mission_camera-response)))
  "Returns string type for a service object of type 'mission_camera-response"
  "mission/mission_cameraResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mission_camera-response>)))
  "Returns md5sum for a message object of type '<mission_camera-response>"
  "21a18da0693a50b6cde67125054bddd4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mission_camera-response)))
  "Returns md5sum for a message object of type 'mission_camera-response"
  "21a18da0693a50b6cde67125054bddd4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mission_camera-response>)))
  "Returns full string definition for message of type '<mission_camera-response>"
  (cl:format cl:nil "int32[] coordinate_camera~%int32 cup_color_camera~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mission_camera-response)))
  "Returns full string definition for message of type 'mission_camera-response"
  (cl:format cl:nil "int32[] coordinate_camera~%int32 cup_color_camera~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mission_camera-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'coordinate_camera) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mission_camera-response>))
  "Converts a ROS message object to a list"
  (cl:list 'mission_camera-response
    (cl:cons ':coordinate_camera (coordinate_camera msg))
    (cl:cons ':cup_color_camera (cup_color_camera msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'mission_camera)))
  'mission_camera-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'mission_camera)))
  'mission_camera-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mission_camera)))
  "Returns string type for a service object of type '<mission_camera>"
  "mission/mission_camera")