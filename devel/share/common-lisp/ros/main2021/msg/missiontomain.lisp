; Auto-generated. Do not edit!


(cl:in-package main2021-msg)


;//! \htmlinclude missiontomain.msg.html

(cl:defclass <missiontomain> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:integer
    :initform 0))
)

(cl:defclass missiontomain (<missiontomain>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <missiontomain>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'missiontomain)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name main2021-msg:<missiontomain> is deprecated: use main2021-msg:missiontomain instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <missiontomain>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main2021-msg:state-val is deprecated.  Use main2021-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <missiontomain>) ostream)
  "Serializes a message object of type '<missiontomain>"
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <missiontomain>) istream)
  "Deserializes a message object of type '<missiontomain>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<missiontomain>)))
  "Returns string type for a message object of type '<missiontomain>"
  "main2021/missiontomain")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'missiontomain)))
  "Returns string type for a message object of type 'missiontomain"
  "main2021/missiontomain")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<missiontomain>)))
  "Returns md5sum for a message object of type '<missiontomain>"
  "7a2f37ef2ba405f0c7a15cc72663d6f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'missiontomain)))
  "Returns md5sum for a message object of type 'missiontomain"
  "7a2f37ef2ba405f0c7a15cc72663d6f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<missiontomain>)))
  "Returns full string definition for message of type '<missiontomain>"
  (cl:format cl:nil "int32 state~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'missiontomain)))
  "Returns full string definition for message of type 'missiontomain"
  (cl:format cl:nil "int32 state~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <missiontomain>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <missiontomain>))
  "Converts a ROS message object to a list"
  (cl:list 'missiontomain
    (cl:cons ':state (state msg))
))
