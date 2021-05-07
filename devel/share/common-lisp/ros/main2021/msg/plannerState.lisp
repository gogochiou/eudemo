; Auto-generated. Do not edit!


(cl:in-package main2021-msg)


;//! \htmlinclude plannerState.msg.html

(cl:defclass <plannerState> (roslisp-msg-protocol:ros-message)
  ((plan_state
    :reader plan_state
    :initarg :plan_state
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass plannerState (<plannerState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <plannerState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'plannerState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name main2021-msg:<plannerState> is deprecated: use main2021-msg:plannerState instead.")))

(cl:ensure-generic-function 'plan_state-val :lambda-list '(m))
(cl:defmethod plan_state-val ((m <plannerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main2021-msg:plan_state-val is deprecated.  Use main2021-msg:plan_state instead.")
  (plan_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <plannerState>) ostream)
  "Serializes a message object of type '<plannerState>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'plan_state))))
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
   (cl:slot-value msg 'plan_state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <plannerState>) istream)
  "Deserializes a message object of type '<plannerState>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'plan_state) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'plan_state)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<plannerState>)))
  "Returns string type for a message object of type '<plannerState>"
  "main2021/plannerState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'plannerState)))
  "Returns string type for a message object of type 'plannerState"
  "main2021/plannerState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<plannerState>)))
  "Returns md5sum for a message object of type '<plannerState>"
  "f66f0959567ef2a880883da8a8aff308")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'plannerState)))
  "Returns md5sum for a message object of type 'plannerState"
  "f66f0959567ef2a880883da8a8aff308")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<plannerState>)))
  "Returns full string definition for message of type '<plannerState>"
  (cl:format cl:nil "int32[] plan_state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'plannerState)))
  "Returns full string definition for message of type 'plannerState"
  (cl:format cl:nil "int32[] plan_state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <plannerState>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'plan_state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <plannerState>))
  "Converts a ROS message object to a list"
  (cl:list 'plannerState
    (cl:cons ':plan_state (plan_state msg))
))
