; Auto-generated. Do not edit!


(cl:in-package robotiq_msgs-msg)


;//! \htmlinclude CModelCommandFeedback.msg.html

(cl:defclass <CModelCommandFeedback> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type cl:float
    :initform 0.0)
   (activated
    :reader activated
    :initarg :activated
    :type cl:boolean
    :initform cl:nil)
   (stalled
    :reader stalled
    :initarg :stalled
    :type cl:boolean
    :initform cl:nil)
   (reached_goal
    :reader reached_goal
    :initarg :reached_goal
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CModelCommandFeedback (<CModelCommandFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CModelCommandFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CModelCommandFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotiq_msgs-msg:<CModelCommandFeedback> is deprecated: use robotiq_msgs-msg:CModelCommandFeedback instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <CModelCommandFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_msgs-msg:position-val is deprecated.  Use robotiq_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'activated-val :lambda-list '(m))
(cl:defmethod activated-val ((m <CModelCommandFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_msgs-msg:activated-val is deprecated.  Use robotiq_msgs-msg:activated instead.")
  (activated m))

(cl:ensure-generic-function 'stalled-val :lambda-list '(m))
(cl:defmethod stalled-val ((m <CModelCommandFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_msgs-msg:stalled-val is deprecated.  Use robotiq_msgs-msg:stalled instead.")
  (stalled m))

(cl:ensure-generic-function 'reached_goal-val :lambda-list '(m))
(cl:defmethod reached_goal-val ((m <CModelCommandFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_msgs-msg:reached_goal-val is deprecated.  Use robotiq_msgs-msg:reached_goal instead.")
  (reached_goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CModelCommandFeedback>) ostream)
  "Serializes a message object of type '<CModelCommandFeedback>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'activated) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stalled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reached_goal) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CModelCommandFeedback>) istream)
  "Deserializes a message object of type '<CModelCommandFeedback>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'activated) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'stalled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'reached_goal) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CModelCommandFeedback>)))
  "Returns string type for a message object of type '<CModelCommandFeedback>"
  "robotiq_msgs/CModelCommandFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CModelCommandFeedback)))
  "Returns string type for a message object of type 'CModelCommandFeedback"
  "robotiq_msgs/CModelCommandFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CModelCommandFeedback>)))
  "Returns md5sum for a message object of type '<CModelCommandFeedback>"
  "0c22872a7859572c1fc9fe8ee6018789")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CModelCommandFeedback)))
  "Returns md5sum for a message object of type 'CModelCommandFeedback"
  "0c22872a7859572c1fc9fe8ee6018789")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CModelCommandFeedback>)))
  "Returns full string definition for message of type '<CModelCommandFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Feedback~%float64     position~%bool        activated~%bool        stalled~%bool        reached_goal~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CModelCommandFeedback)))
  "Returns full string definition for message of type 'CModelCommandFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Feedback~%float64     position~%bool        activated~%bool        stalled~%bool        reached_goal~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CModelCommandFeedback>))
  (cl:+ 0
     8
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CModelCommandFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'CModelCommandFeedback
    (cl:cons ':position (position msg))
    (cl:cons ':activated (activated msg))
    (cl:cons ':stalled (stalled msg))
    (cl:cons ':reached_goal (reached_goal msg))
))
