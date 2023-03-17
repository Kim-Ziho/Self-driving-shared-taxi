; Auto-generated. Do not edit!


(cl:in-package ssafy_2-msg)


;//! \htmlinclude mvp.msg.html

(cl:defclass <mvp> (roslisp-msg-protocol:ros-message)
  ((longitudei
    :reader longitudei
    :initarg :longitudei
    :type cl:float
    :initform 0.0)
   (latitudei
    :reader latitudei
    :initarg :latitudei
    :type cl:float
    :initform 0.0)
   (longitudeg
    :reader longitudeg
    :initarg :longitudeg
    :type cl:float
    :initform 0.0)
   (latitudeg
    :reader latitudeg
    :initarg :latitudeg
    :type cl:float
    :initform 0.0))
)

(cl:defclass mvp (<mvp>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mvp>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mvp)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ssafy_2-msg:<mvp> is deprecated: use ssafy_2-msg:mvp instead.")))

(cl:ensure-generic-function 'longitudei-val :lambda-list '(m))
(cl:defmethod longitudei-val ((m <mvp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssafy_2-msg:longitudei-val is deprecated.  Use ssafy_2-msg:longitudei instead.")
  (longitudei m))

(cl:ensure-generic-function 'latitudei-val :lambda-list '(m))
(cl:defmethod latitudei-val ((m <mvp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssafy_2-msg:latitudei-val is deprecated.  Use ssafy_2-msg:latitudei instead.")
  (latitudei m))

(cl:ensure-generic-function 'longitudeg-val :lambda-list '(m))
(cl:defmethod longitudeg-val ((m <mvp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssafy_2-msg:longitudeg-val is deprecated.  Use ssafy_2-msg:longitudeg instead.")
  (longitudeg m))

(cl:ensure-generic-function 'latitudeg-val :lambda-list '(m))
(cl:defmethod latitudeg-val ((m <mvp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssafy_2-msg:latitudeg-val is deprecated.  Use ssafy_2-msg:latitudeg instead.")
  (latitudeg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mvp>) ostream)
  "Serializes a message object of type '<mvp>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'longitudei))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'latitudei))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'longitudeg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'latitudeg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mvp>) istream)
  "Deserializes a message object of type '<mvp>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitudei) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitudei) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitudeg) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitudeg) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mvp>)))
  "Returns string type for a message object of type '<mvp>"
  "ssafy_2/mvp")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mvp)))
  "Returns string type for a message object of type 'mvp"
  "ssafy_2/mvp")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mvp>)))
  "Returns md5sum for a message object of type '<mvp>"
  "be83d3a65597cc0a4c5a9ccca46da4e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mvp)))
  "Returns md5sum for a message object of type 'mvp"
  "be83d3a65597cc0a4c5a9ccca46da4e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mvp>)))
  "Returns full string definition for message of type '<mvp>"
  (cl:format cl:nil "float64 longitudei~%float64 latitudei~%float64 longitudeg~%float64 latitudeg~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mvp)))
  "Returns full string definition for message of type 'mvp"
  (cl:format cl:nil "float64 longitudei~%float64 latitudei~%float64 longitudeg~%float64 latitudeg~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mvp>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mvp>))
  "Converts a ROS message object to a list"
  (cl:list 'mvp
    (cl:cons ':longitudei (longitudei msg))
    (cl:cons ':latitudei (latitudei msg))
    (cl:cons ':longitudeg (longitudeg msg))
    (cl:cons ':latitudeg (latitudeg msg))
))
