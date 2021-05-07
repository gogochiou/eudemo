; Auto-generated. Do not edit!


(cl:in-package main2021-msg)


;//! \htmlinclude maintomission.msg.html

(cl:defclass <maintomission> (roslisp-msg-protocol:ros-message)
  ((team
    :reader team
    :initarg :team
    :type cl:integer
    :initform 0)
   (action
    :reader action
    :initarg :action
    :type cl:integer
    :initform 0)
   (planer_state
    :reader planer_state
    :initarg :planer_state
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
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (reef
    :reader reef
    :initarg :reef
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (NS
    :reader NS
    :initarg :NS
    :type cl:boolean
    :initform cl:nil)
   (emerg
    :reader emerg
    :initarg :emerg
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass maintomission (<maintomission>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <maintomission>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'maintomission)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name main2021-msg:<maintomission> is deprecated: use main2021-msg:maintomission instead.")))

(cl:ensure-generic-function 'team-val :lambda-list '(m))
(cl:defmethod team-val ((m <maintomission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main2021-msg:team-val is deprecated.  Use main2021-msg:team instead.")
  (team m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <maintomission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main2021-msg:action-val is deprecated.  Use main2021-msg:action instead.")
  (action m))

(cl:ensure-generic-function 'planer_state-val :lambda-list '(m))
(cl:defmethod planer_state-val ((m <maintomission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main2021-msg:planer_state-val is deprecated.  Use main2021-msg:planer_state instead.")
  (planer_state m))

(cl:ensure-generic-function 'action_pos-val :lambda-list '(m))
(cl:defmethod action_pos-val ((m <maintomission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main2021-msg:action_pos-val is deprecated.  Use main2021-msg:action_pos instead.")
  (action_pos m))

(cl:ensure-generic-function 'cup-val :lambda-list '(m))
(cl:defmethod cup-val ((m <maintomission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main2021-msg:cup-val is deprecated.  Use main2021-msg:cup instead.")
  (cup m))

(cl:ensure-generic-function 'hand-val :lambda-list '(m))
(cl:defmethod hand-val ((m <maintomission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main2021-msg:hand-val is deprecated.  Use main2021-msg:hand instead.")
  (hand m))

(cl:ensure-generic-function 'reef-val :lambda-list '(m))
(cl:defmethod reef-val ((m <maintomission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main2021-msg:reef-val is deprecated.  Use main2021-msg:reef instead.")
  (reef m))

(cl:ensure-generic-function 'NS-val :lambda-list '(m))
(cl:defmethod NS-val ((m <maintomission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main2021-msg:NS-val is deprecated.  Use main2021-msg:NS instead.")
  (NS m))

(cl:ensure-generic-function 'emerg-val :lambda-list '(m))
(cl:defmethod emerg-val ((m <maintomission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main2021-msg:emerg-val is deprecated.  Use main2021-msg:emerg instead.")
  (emerg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <maintomission>) ostream)
  "Serializes a message object of type '<maintomission>"
  (cl:let* ((signed (cl:slot-value msg 'team)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'action)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'planer_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'reef))))
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
   (cl:slot-value msg 'reef))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'NS) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'emerg) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <maintomission>) istream)
  "Deserializes a message object of type '<maintomission>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'team) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'planer_state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reef) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'reef)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
    (cl:setf (cl:slot-value msg 'NS) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'emerg) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<maintomission>)))
  "Returns string type for a message object of type '<maintomission>"
  "main2021/maintomission")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'maintomission)))
  "Returns string type for a message object of type 'maintomission"
  "main2021/maintomission")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<maintomission>)))
  "Returns md5sum for a message object of type '<maintomission>"
  "a6c4bebd0fdd628f3d960dc0cc16a1cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'maintomission)))
  "Returns md5sum for a message object of type 'maintomission"
  "a6c4bebd0fdd628f3d960dc0cc16a1cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<maintomission>)))
  "Returns full string definition for message of type '<maintomission>"
  (cl:format cl:nil "int32 team~%int32 action~%int32 planer_state~%float32[] action_pos~%int32[] cup~%int32[] hand~%int32[] reef~%bool NS~%bool emerg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'maintomission)))
  "Returns full string definition for message of type 'maintomission"
  (cl:format cl:nil "int32 team~%int32 action~%int32 planer_state~%float32[] action_pos~%int32[] cup~%int32[] hand~%int32[] reef~%bool NS~%bool emerg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <maintomission>))
  (cl:+ 0
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'action_pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cup) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'hand) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'reef) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <maintomission>))
  "Converts a ROS message object to a list"
  (cl:list 'maintomission
    (cl:cons ':team (team msg))
    (cl:cons ':action (action msg))
    (cl:cons ':planer_state (planer_state msg))
    (cl:cons ':action_pos (action_pos msg))
    (cl:cons ':cup (cup msg))
    (cl:cons ':hand (hand msg))
    (cl:cons ':reef (reef msg))
    (cl:cons ':NS (NS msg))
    (cl:cons ':emerg (emerg msg))
))
