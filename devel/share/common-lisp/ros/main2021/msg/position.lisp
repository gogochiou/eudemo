; Auto-generated. Do not edit!


(cl:in-package main2021-msg)


;//! \htmlinclude position.msg.html

(cl:defclass <position> (roslisp-msg-protocol:ros-message)
  ((my_x
    :reader my_x
    :initarg :my_x
    :type cl:float
    :initform 0.0)
   (my_y
    :reader my_y
    :initarg :my_y
    :type cl:float
    :initform 0.0)
   (my_z
    :reader my_z
    :initarg :my_z
    :type cl:float
    :initform 0.0)
   (my_degreex
    :reader my_degreex
    :initarg :my_degreex
    :type cl:float
    :initform 0.0)
   (my_degreey
    :reader my_degreey
    :initarg :my_degreey
    :type cl:float
    :initform 0.0)
   (my_degreez
    :reader my_degreez
    :initarg :my_degreez
    :type cl:float
    :initform 0.0)
   (my_degreew
    :reader my_degreew
    :initarg :my_degreew
    :type cl:float
    :initform 0.0))
)

(cl:defclass position (<position>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <position>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'position)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name main2021-msg:<position> is deprecated: use main2021-msg:position instead.")))

(cl:ensure-generic-function 'my_x-val :lambda-list '(m))
(cl:defmethod my_x-val ((m <position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main2021-msg:my_x-val is deprecated.  Use main2021-msg:my_x instead.")
  (my_x m))

(cl:ensure-generic-function 'my_y-val :lambda-list '(m))
(cl:defmethod my_y-val ((m <position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main2021-msg:my_y-val is deprecated.  Use main2021-msg:my_y instead.")
  (my_y m))

(cl:ensure-generic-function 'my_z-val :lambda-list '(m))
(cl:defmethod my_z-val ((m <position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main2021-msg:my_z-val is deprecated.  Use main2021-msg:my_z instead.")
  (my_z m))

(cl:ensure-generic-function 'my_degreex-val :lambda-list '(m))
(cl:defmethod my_degreex-val ((m <position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main2021-msg:my_degreex-val is deprecated.  Use main2021-msg:my_degreex instead.")
  (my_degreex m))

(cl:ensure-generic-function 'my_degreey-val :lambda-list '(m))
(cl:defmethod my_degreey-val ((m <position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main2021-msg:my_degreey-val is deprecated.  Use main2021-msg:my_degreey instead.")
  (my_degreey m))

(cl:ensure-generic-function 'my_degreez-val :lambda-list '(m))
(cl:defmethod my_degreez-val ((m <position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main2021-msg:my_degreez-val is deprecated.  Use main2021-msg:my_degreez instead.")
  (my_degreez m))

(cl:ensure-generic-function 'my_degreew-val :lambda-list '(m))
(cl:defmethod my_degreew-val ((m <position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main2021-msg:my_degreew-val is deprecated.  Use main2021-msg:my_degreew instead.")
  (my_degreew m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <position>) ostream)
  "Serializes a message object of type '<position>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'my_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'my_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'my_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'my_degreex))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'my_degreey))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'my_degreez))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'my_degreew))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <position>) istream)
  "Deserializes a message object of type '<position>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'my_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'my_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'my_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'my_degreex) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'my_degreey) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'my_degreez) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'my_degreew) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<position>)))
  "Returns string type for a message object of type '<position>"
  "main2021/position")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'position)))
  "Returns string type for a message object of type 'position"
  "main2021/position")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<position>)))
  "Returns md5sum for a message object of type '<position>"
  "04836b89de39e862e20e94175e8fc855")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'position)))
  "Returns md5sum for a message object of type 'position"
  "04836b89de39e862e20e94175e8fc855")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<position>)))
  "Returns full string definition for message of type '<position>"
  (cl:format cl:nil "float32 my_x~%float32 my_y~%float32 my_z~%float32 my_degreex~%float32 my_degreey~%float32 my_degreez~%float32 my_degreew~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'position)))
  "Returns full string definition for message of type 'position"
  (cl:format cl:nil "float32 my_x~%float32 my_y~%float32 my_z~%float32 my_degreex~%float32 my_degreey~%float32 my_degreez~%float32 my_degreew~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <position>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <position>))
  "Converts a ROS message object to a list"
  (cl:list 'position
    (cl:cons ':my_x (my_x msg))
    (cl:cons ':my_y (my_y msg))
    (cl:cons ':my_z (my_z msg))
    (cl:cons ':my_degreex (my_degreex msg))
    (cl:cons ':my_degreey (my_degreey msg))
    (cl:cons ':my_degreez (my_degreez msg))
    (cl:cons ':my_degreew (my_degreew msg))
))
