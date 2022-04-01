; Auto-generated. Do not edit!


(cl:in-package robotiq_msgs-msg)


;//! \htmlinclude CModelCommand.msg.html

(cl:defclass <CModelCommand> (roslisp-msg-protocol:ros-message)
  ((rACT
    :reader rACT
    :initarg :rACT
    :type cl:fixnum
    :initform 0)
   (rGTO
    :reader rGTO
    :initarg :rGTO
    :type cl:fixnum
    :initform 0)
   (rATR
    :reader rATR
    :initarg :rATR
    :type cl:fixnum
    :initform 0)
   (rPR
    :reader rPR
    :initarg :rPR
    :type cl:fixnum
    :initform 0)
   (rSP
    :reader rSP
    :initarg :rSP
    :type cl:fixnum
    :initform 0)
   (rFR
    :reader rFR
    :initarg :rFR
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CModelCommand (<CModelCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CModelCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CModelCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotiq_msgs-msg:<CModelCommand> is deprecated: use robotiq_msgs-msg:CModelCommand instead.")))

(cl:ensure-generic-function 'rACT-val :lambda-list '(m))
(cl:defmethod rACT-val ((m <CModelCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_msgs-msg:rACT-val is deprecated.  Use robotiq_msgs-msg:rACT instead.")
  (rACT m))

(cl:ensure-generic-function 'rGTO-val :lambda-list '(m))
(cl:defmethod rGTO-val ((m <CModelCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_msgs-msg:rGTO-val is deprecated.  Use robotiq_msgs-msg:rGTO instead.")
  (rGTO m))

(cl:ensure-generic-function 'rATR-val :lambda-list '(m))
(cl:defmethod rATR-val ((m <CModelCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_msgs-msg:rATR-val is deprecated.  Use robotiq_msgs-msg:rATR instead.")
  (rATR m))

(cl:ensure-generic-function 'rPR-val :lambda-list '(m))
(cl:defmethod rPR-val ((m <CModelCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_msgs-msg:rPR-val is deprecated.  Use robotiq_msgs-msg:rPR instead.")
  (rPR m))

(cl:ensure-generic-function 'rSP-val :lambda-list '(m))
(cl:defmethod rSP-val ((m <CModelCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_msgs-msg:rSP-val is deprecated.  Use robotiq_msgs-msg:rSP instead.")
  (rSP m))

(cl:ensure-generic-function 'rFR-val :lambda-list '(m))
(cl:defmethod rFR-val ((m <CModelCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_msgs-msg:rFR-val is deprecated.  Use robotiq_msgs-msg:rFR instead.")
  (rFR m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CModelCommand>) ostream)
  "Serializes a message object of type '<CModelCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rACT)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rGTO)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rATR)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rPR)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rSP)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rFR)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CModelCommand>) istream)
  "Deserializes a message object of type '<CModelCommand>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rACT)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rGTO)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rATR)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rPR)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rSP)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rFR)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CModelCommand>)))
  "Returns string type for a message object of type '<CModelCommand>"
  "robotiq_msgs/CModelCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CModelCommand)))
  "Returns string type for a message object of type 'CModelCommand"
  "robotiq_msgs/CModelCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CModelCommand>)))
  "Returns md5sum for a message object of type '<CModelCommand>"
  "481503a99d995d0e403b7ee708c6862c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CModelCommand)))
  "Returns md5sum for a message object of type 'CModelCommand"
  "481503a99d995d0e403b7ee708c6862c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CModelCommand>)))
  "Returns full string definition for message of type '<CModelCommand>"
  (cl:format cl:nil "uint8 rACT~%uint8 rGTO~%uint8 rATR~%uint8 rPR~%uint8 rSP~%uint8 rFR~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CModelCommand)))
  "Returns full string definition for message of type 'CModelCommand"
  (cl:format cl:nil "uint8 rACT~%uint8 rGTO~%uint8 rATR~%uint8 rPR~%uint8 rSP~%uint8 rFR~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CModelCommand>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CModelCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'CModelCommand
    (cl:cons ':rACT (rACT msg))
    (cl:cons ':rGTO (rGTO msg))
    (cl:cons ':rATR (rATR msg))
    (cl:cons ':rPR (rPR msg))
    (cl:cons ':rSP (rSP msg))
    (cl:cons ':rFR (rFR msg))
))
