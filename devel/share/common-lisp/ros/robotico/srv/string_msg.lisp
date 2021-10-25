; Auto-generated. Do not edit!


(cl:in-package robotico-srv)


;//! \htmlinclude string_msg-request.msg.html

(cl:defclass <string_msg-request> (roslisp-msg-protocol:ros-message)
  ((in
    :reader in
    :initarg :in
    :type cl:string
    :initform ""))
)

(cl:defclass string_msg-request (<string_msg-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <string_msg-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'string_msg-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotico-srv:<string_msg-request> is deprecated: use robotico-srv:string_msg-request instead.")))

(cl:ensure-generic-function 'in-val :lambda-list '(m))
(cl:defmethod in-val ((m <string_msg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotico-srv:in-val is deprecated.  Use robotico-srv:in instead.")
  (in m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <string_msg-request>) ostream)
  "Serializes a message object of type '<string_msg-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'in))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'in))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <string_msg-request>) istream)
  "Deserializes a message object of type '<string_msg-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'in) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'in) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<string_msg-request>)))
  "Returns string type for a service object of type '<string_msg-request>"
  "robotico/string_msgRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'string_msg-request)))
  "Returns string type for a service object of type 'string_msg-request"
  "robotico/string_msgRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<string_msg-request>)))
  "Returns md5sum for a message object of type '<string_msg-request>"
  "e21fb7853ad73d6d988d6371d4fed1e2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'string_msg-request)))
  "Returns md5sum for a message object of type 'string_msg-request"
  "e21fb7853ad73d6d988d6371d4fed1e2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<string_msg-request>)))
  "Returns full string definition for message of type '<string_msg-request>"
  (cl:format cl:nil "string in~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'string_msg-request)))
  "Returns full string definition for message of type 'string_msg-request"
  (cl:format cl:nil "string in~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <string_msg-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'in))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <string_msg-request>))
  "Converts a ROS message object to a list"
  (cl:list 'string_msg-request
    (cl:cons ':in (in msg))
))
;//! \htmlinclude string_msg-response.msg.html

(cl:defclass <string_msg-response> (roslisp-msg-protocol:ros-message)
  ((out
    :reader out
    :initarg :out
    :type cl:string
    :initform ""))
)

(cl:defclass string_msg-response (<string_msg-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <string_msg-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'string_msg-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotico-srv:<string_msg-response> is deprecated: use robotico-srv:string_msg-response instead.")))

(cl:ensure-generic-function 'out-val :lambda-list '(m))
(cl:defmethod out-val ((m <string_msg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotico-srv:out-val is deprecated.  Use robotico-srv:out instead.")
  (out m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <string_msg-response>) ostream)
  "Serializes a message object of type '<string_msg-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'out))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'out))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <string_msg-response>) istream)
  "Deserializes a message object of type '<string_msg-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'out) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'out) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<string_msg-response>)))
  "Returns string type for a service object of type '<string_msg-response>"
  "robotico/string_msgResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'string_msg-response)))
  "Returns string type for a service object of type 'string_msg-response"
  "robotico/string_msgResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<string_msg-response>)))
  "Returns md5sum for a message object of type '<string_msg-response>"
  "e21fb7853ad73d6d988d6371d4fed1e2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'string_msg-response)))
  "Returns md5sum for a message object of type 'string_msg-response"
  "e21fb7853ad73d6d988d6371d4fed1e2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<string_msg-response>)))
  "Returns full string definition for message of type '<string_msg-response>"
  (cl:format cl:nil "string out~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'string_msg-response)))
  "Returns full string definition for message of type 'string_msg-response"
  (cl:format cl:nil "string out~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <string_msg-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'out))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <string_msg-response>))
  "Converts a ROS message object to a list"
  (cl:list 'string_msg-response
    (cl:cons ':out (out msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'string_msg)))
  'string_msg-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'string_msg)))
  'string_msg-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'string_msg)))
  "Returns string type for a service object of type '<string_msg>"
  "robotico/string_msg")