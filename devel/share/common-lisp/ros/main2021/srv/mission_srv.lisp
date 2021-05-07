; Auto-generated. Do not edit!


(cl:in-package main2021-srv)


;//! \htmlinclude mission_srv-request.msg.html

(cl:defclass <mission_srv-request> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type cl:integer
    :initform 0)
   (action_pos
    :reader action_pos
    :initarg :action_pos
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (cup
    :reader cup
    :initarg :cup
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (hand
    :reader hand
    :initarg :hand
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass mission_srv-request (<mission_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mission_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mission_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name main2021-srv:<mission_srv-request> is deprecated: use main2021-srv:mission_srv-request instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <mission_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main2021-srv:action-val is deprecated.  Use main2021-srv:action instead.")
  (action m))

(cl:ensure-generic-function 'action_pos-val :lambda-list '(m))
(cl:defmethod action_pos-val ((m <mission_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main2021-srv:action_pos-val is deprecated.  Use main2021-srv:action_pos instead.")
  (action_pos m))

(cl:ensure-generic-function 'cup-val :lambda-list '(m))
(cl:defmethod cup-val ((m <mission_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main2021-srv:cup-val is deprecated.  Use main2021-srv:cup instead.")
  (cup m))

(cl:ensure-generic-function 'hand-val :lambda-list '(m))
(cl:defmethod hand-val ((m <mission_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main2021-srv:hand-val is deprecated.  Use main2021-srv:hand instead.")
  (hand m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mission_srv-request>) ostream)
  "Serializes a message object of type '<mission_srv-request>"
  (cl:let* ((signed (cl:slot-value msg 'action)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'action_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'action_pos))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cup))))
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
   (cl:slot-value msg 'cup))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'hand))))
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
   (cl:slot-value msg 'hand))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mission_srv-request>) istream)
  "Deserializes a message object of type '<mission_srv-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'action_pos) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'action_pos)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cup) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cup)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'hand) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'hand)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mission_srv-request>)))
  "Returns string type for a service object of type '<mission_srv-request>"
  "main2021/mission_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mission_srv-request)))
  "Returns string type for a service object of type 'mission_srv-request"
  "main2021/mission_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mission_srv-request>)))
  "Returns md5sum for a message object of type '<mission_srv-request>"
  "bce17d4b6829904ca26b97013468df60")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mission_srv-request)))
  "Returns md5sum for a message object of type 'mission_srv-request"
  "bce17d4b6829904ca26b97013468df60")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mission_srv-request>)))
  "Returns full string definition for message of type '<mission_srv-request>"
  (cl:format cl:nil "int32 action~%float32[] action_pos~%int32[] cup~%int32[] hand~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mission_srv-request)))
  "Returns full string definition for message of type 'mission_srv-request"
  (cl:format cl:nil "int32 action~%float32[] action_pos~%int32[] cup~%int32[] hand~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mission_srv-request>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'action_pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cup) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'hand) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mission_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'mission_srv-request
    (cl:cons ':action (action msg))
    (cl:cons ':action_pos (action_pos msg))
    (cl:cons ':cup (cup msg))
    (cl:cons ':hand (hand msg))
))
;//! \htmlinclude mission_srv-response.msg.html

(cl:defclass <mission_srv-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:integer
    :initform 0))
)

(cl:defclass mission_srv-response (<mission_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mission_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mission_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name main2021-srv:<mission_srv-response> is deprecated: use main2021-srv:mission_srv-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <mission_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main2021-srv:state-val is deprecated.  Use main2021-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mission_srv-response>) ostream)
  "Serializes a message object of type '<mission_srv-response>"
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mission_srv-response>) istream)
  "Deserializes a message object of type '<mission_srv-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mission_srv-response>)))
  "Returns string type for a service object of type '<mission_srv-response>"
  "main2021/mission_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mission_srv-response)))
  "Returns string type for a service object of type 'mission_srv-response"
  "main2021/mission_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mission_srv-response>)))
  "Returns md5sum for a message object of type '<mission_srv-response>"
  "bce17d4b6829904ca26b97013468df60")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mission_srv-response)))
  "Returns md5sum for a message object of type 'mission_srv-response"
  "bce17d4b6829904ca26b97013468df60")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mission_srv-response>)))
  "Returns full string definition for message of type '<mission_srv-response>"
  (cl:format cl:nil "int32 state~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mission_srv-response)))
  "Returns full string definition for message of type 'mission_srv-response"
  (cl:format cl:nil "int32 state~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mission_srv-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mission_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'mission_srv-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'mission_srv)))
  'mission_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'mission_srv)))
  'mission_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mission_srv)))
  "Returns string type for a service object of type '<mission_srv>"
  "main2021/mission_srv")