; Auto-generated. Do not edit!


(cl:in-package ros_topic-msg)


;//! \htmlinclude demo.msg.html

(cl:defclass <demo> (roslisp-msg-protocol:ros-message)
  ((valore
    :reader valore
    :initarg :valore
    :type cl:float
    :initform 0.0)
   (periodo
    :reader periodo
    :initarg :periodo
    :type cl:float
    :initform 0.0)
   (ampiezza
    :reader ampiezza
    :initarg :ampiezza
    :type cl:float
    :initform 0.0))
)

(cl:defclass demo (<demo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <demo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'demo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_topic-msg:<demo> is deprecated: use ros_topic-msg:demo instead.")))

(cl:ensure-generic-function 'valore-val :lambda-list '(m))
(cl:defmethod valore-val ((m <demo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_topic-msg:valore-val is deprecated.  Use ros_topic-msg:valore instead.")
  (valore m))

(cl:ensure-generic-function 'periodo-val :lambda-list '(m))
(cl:defmethod periodo-val ((m <demo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_topic-msg:periodo-val is deprecated.  Use ros_topic-msg:periodo instead.")
  (periodo m))

(cl:ensure-generic-function 'ampiezza-val :lambda-list '(m))
(cl:defmethod ampiezza-val ((m <demo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_topic-msg:ampiezza-val is deprecated.  Use ros_topic-msg:ampiezza instead.")
  (ampiezza m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <demo>) ostream)
  "Serializes a message object of type '<demo>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'valore))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'periodo))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ampiezza))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <demo>) istream)
  "Deserializes a message object of type '<demo>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'valore) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'periodo) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ampiezza) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<demo>)))
  "Returns string type for a message object of type '<demo>"
  "ros_topic/demo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'demo)))
  "Returns string type for a message object of type 'demo"
  "ros_topic/demo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<demo>)))
  "Returns md5sum for a message object of type '<demo>"
  "090b6990903cf4047b51d53a5fb1176e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'demo)))
  "Returns md5sum for a message object of type 'demo"
  "090b6990903cf4047b51d53a5fb1176e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<demo>)))
  "Returns full string definition for message of type '<demo>"
  (cl:format cl:nil "float64 valore~%float64 periodo~%float64 ampiezza~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'demo)))
  "Returns full string definition for message of type 'demo"
  (cl:format cl:nil "float64 valore~%float64 periodo~%float64 ampiezza~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <demo>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <demo>))
  "Converts a ROS message object to a list"
  (cl:list 'demo
    (cl:cons ':valore (valore msg))
    (cl:cons ':periodo (periodo msg))
    (cl:cons ':ampiezza (ampiezza msg))
))
