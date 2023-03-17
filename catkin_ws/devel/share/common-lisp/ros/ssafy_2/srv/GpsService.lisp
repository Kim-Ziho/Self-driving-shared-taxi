; Auto-generated. Do not edit!


(cl:in-package ssafy_2-srv)


;//! \htmlinclude GpsService-request.msg.html

(cl:defclass <GpsService-request> (roslisp-msg-protocol:ros-message)
  ((start_latitude
    :reader start_latitude
    :initarg :start_latitude
    :type cl:float
    :initform 0.0)
   (start_longitude
    :reader start_longitude
    :initarg :start_longitude
    :type cl:float
    :initform 0.0)
   (end_latitude
    :reader end_latitude
    :initarg :end_latitude
    :type cl:float
    :initform 0.0)
   (end_longitude
    :reader end_longitude
    :initarg :end_longitude
    :type cl:float
    :initform 0.0))
)

(cl:defclass GpsService-request (<GpsService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GpsService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GpsService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ssafy_2-srv:<GpsService-request> is deprecated: use ssafy_2-srv:GpsService-request instead.")))

(cl:ensure-generic-function 'start_latitude-val :lambda-list '(m))
(cl:defmethod start_latitude-val ((m <GpsService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssafy_2-srv:start_latitude-val is deprecated.  Use ssafy_2-srv:start_latitude instead.")
  (start_latitude m))

(cl:ensure-generic-function 'start_longitude-val :lambda-list '(m))
(cl:defmethod start_longitude-val ((m <GpsService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssafy_2-srv:start_longitude-val is deprecated.  Use ssafy_2-srv:start_longitude instead.")
  (start_longitude m))

(cl:ensure-generic-function 'end_latitude-val :lambda-list '(m))
(cl:defmethod end_latitude-val ((m <GpsService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssafy_2-srv:end_latitude-val is deprecated.  Use ssafy_2-srv:end_latitude instead.")
  (end_latitude m))

(cl:ensure-generic-function 'end_longitude-val :lambda-list '(m))
(cl:defmethod end_longitude-val ((m <GpsService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssafy_2-srv:end_longitude-val is deprecated.  Use ssafy_2-srv:end_longitude instead.")
  (end_longitude m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GpsService-request>) ostream)
  "Serializes a message object of type '<GpsService-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'start_latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'start_longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'end_latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'end_longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GpsService-request>) istream)
  "Deserializes a message object of type '<GpsService-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'start_latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'start_longitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'end_latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'end_longitude) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GpsService-request>)))
  "Returns string type for a service object of type '<GpsService-request>"
  "ssafy_2/GpsServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GpsService-request)))
  "Returns string type for a service object of type 'GpsService-request"
  "ssafy_2/GpsServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GpsService-request>)))
  "Returns md5sum for a message object of type '<GpsService-request>"
  "a521110ed02262d566473f15c18bcdf5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GpsService-request)))
  "Returns md5sum for a message object of type 'GpsService-request"
  "a521110ed02262d566473f15c18bcdf5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GpsService-request>)))
  "Returns full string definition for message of type '<GpsService-request>"
  (cl:format cl:nil "float64 start_latitude~%float64 start_longitude~%float64 end_latitude~%float64 end_longitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GpsService-request)))
  "Returns full string definition for message of type 'GpsService-request"
  (cl:format cl:nil "float64 start_latitude~%float64 start_longitude~%float64 end_latitude~%float64 end_longitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GpsService-request>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GpsService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GpsService-request
    (cl:cons ':start_latitude (start_latitude msg))
    (cl:cons ':start_longitude (start_longitude msg))
    (cl:cons ':end_latitude (end_latitude msg))
    (cl:cons ':end_longitude (end_longitude msg))
))
;//! \htmlinclude GpsService-response.msg.html

(cl:defclass <GpsService-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GpsService-response (<GpsService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GpsService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GpsService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ssafy_2-srv:<GpsService-response> is deprecated: use ssafy_2-srv:GpsService-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GpsService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssafy_2-srv:result-val is deprecated.  Use ssafy_2-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GpsService-response>) ostream)
  "Serializes a message object of type '<GpsService-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GpsService-response>) istream)
  "Deserializes a message object of type '<GpsService-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GpsService-response>)))
  "Returns string type for a service object of type '<GpsService-response>"
  "ssafy_2/GpsServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GpsService-response)))
  "Returns string type for a service object of type 'GpsService-response"
  "ssafy_2/GpsServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GpsService-response>)))
  "Returns md5sum for a message object of type '<GpsService-response>"
  "a521110ed02262d566473f15c18bcdf5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GpsService-response)))
  "Returns md5sum for a message object of type 'GpsService-response"
  "a521110ed02262d566473f15c18bcdf5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GpsService-response>)))
  "Returns full string definition for message of type '<GpsService-response>"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GpsService-response)))
  "Returns full string definition for message of type 'GpsService-response"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GpsService-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GpsService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GpsService-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GpsService)))
  'GpsService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GpsService)))
  'GpsService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GpsService)))
  "Returns string type for a service object of type '<GpsService>"
  "ssafy_2/GpsService")