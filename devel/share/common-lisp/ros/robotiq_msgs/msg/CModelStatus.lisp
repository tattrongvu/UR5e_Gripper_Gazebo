; Auto-generated. Do not edit!


(cl:in-package robotiq_msgs-msg)


;//! \htmlinclude CModelStatus.msg.html

(cl:defclass <CModelStatus> (roslisp-msg-protocol:ros-message)
  ((gACT
    :reader gACT
    :initarg :gACT
    :type cl:fixnum
    :initform 0)
   (gGTO
    :reader gGTO
    :initarg :gGTO
    :type cl:fixnum
    :initform 0)
   (gSTA
    :reader gSTA
    :initarg :gSTA
    :type cl:fixnum
    :initform 0)
   (gOBJ
    :reader gOBJ
    :initarg :gOBJ
    :type cl:fixnum
    :initform 0)
   (gFLT
    :reader gFLT
    :initarg :gFLT
    :type cl:fixnum
    :initform 0)
   (gPR
    :reader gPR
    :initarg :gPR
    :type cl:fixnum
    :initform 0)
   (gPO
    :reader gPO
    :initarg :gPO
    :type cl:fixnum
    :initform 0)
   (gCU
    :reader gCU
    :initarg :gCU
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CModelStatus (<CModelStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CModelStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CModelStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotiq_msgs-msg:<CModelStatus> is deprecated: use robotiq_msgs-msg:CModelStatus instead.")))

(cl:ensure-generic-function 'gACT-val :lambda-list '(m))
(cl:defmethod gACT-val ((m <CModelStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_msgs-msg:gACT-val is deprecated.  Use robotiq_msgs-msg:gACT instead.")
  (gACT m))

(cl:ensure-generic-function 'gGTO-val :lambda-list '(m))
(cl:defmethod gGTO-val ((m <CModelStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_msgs-msg:gGTO-val is deprecated.  Use robotiq_msgs-msg:gGTO instead.")
  (gGTO m))

(cl:ensure-generic-function 'gSTA-val :lambda-list '(m))
(cl:defmethod gSTA-val ((m <CModelStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_msgs-msg:gSTA-val is deprecated.  Use robotiq_msgs-msg:gSTA instead.")
  (gSTA m))

(cl:ensure-generic-function 'gOBJ-val :lambda-list '(m))
(cl:defmethod gOBJ-val ((m <CModelStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_msgs-msg:gOBJ-val is deprecated.  Use robotiq_msgs-msg:gOBJ instead.")
  (gOBJ m))

(cl:ensure-generic-function 'gFLT-val :lambda-list '(m))
(cl:defmethod gFLT-val ((m <CModelStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_msgs-msg:gFLT-val is deprecated.  Use robotiq_msgs-msg:gFLT instead.")
  (gFLT m))

(cl:ensure-generic-function 'gPR-val :lambda-list '(m))
(cl:defmethod gPR-val ((m <CModelStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_msgs-msg:gPR-val is deprecated.  Use robotiq_msgs-msg:gPR instead.")
  (gPR m))

(cl:ensure-generic-function 'gPO-val :lambda-list '(m))
(cl:defmethod gPO-val ((m <CModelStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_msgs-msg:gPO-val is deprecated.  Use robotiq_msgs-msg:gPO instead.")
  (gPO m))

(cl:ensure-generic-function 'gCU-val :lambda-list '(m))
(cl:defmethod gCU-val ((m <CModelStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_msgs-msg:gCU-val is deprecated.  Use robotiq_msgs-msg:gCU instead.")
  (gCU m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CModelStatus>) ostream)
  "Serializes a message object of type '<CModelStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gACT)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gGTO)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gSTA)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gOBJ)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gFLT)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gPR)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gPO)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gCU)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CModelStatus>) istream)
  "Deserializes a message object of type '<CModelStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gACT)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gGTO)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gSTA)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gOBJ)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gFLT)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gPR)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gPO)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gCU)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CModelStatus>)))
  "Returns string type for a message object of type '<CModelStatus>"
  "robotiq_msgs/CModelStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CModelStatus)))
  "Returns string type for a message object of type 'CModelStatus"
  "robotiq_msgs/CModelStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CModelStatus>)))
  "Returns md5sum for a message object of type '<CModelStatus>"
  "17d49e32c00f4f2fb4fe664060553362")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CModelStatus)))
  "Returns md5sum for a message object of type 'CModelStatus"
  "17d49e32c00f4f2fb4fe664060553362")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CModelStatus>)))
  "Returns full string definition for message of type '<CModelStatus>"
  (cl:format cl:nil "uint8 gACT ~%uint8 gGTO ~%uint8 gSTA ~%uint8 gOBJ ~%uint8 gFLT~%uint8 gPR~%uint8 gPO~%uint8 gCU~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CModelStatus)))
  "Returns full string definition for message of type 'CModelStatus"
  (cl:format cl:nil "uint8 gACT ~%uint8 gGTO ~%uint8 gSTA ~%uint8 gOBJ ~%uint8 gFLT~%uint8 gPR~%uint8 gPO~%uint8 gCU~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CModelStatus>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CModelStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'CModelStatus
    (cl:cons ':gACT (gACT msg))
    (cl:cons ':gGTO (gGTO msg))
    (cl:cons ':gSTA (gSTA msg))
    (cl:cons ':gOBJ (gOBJ msg))
    (cl:cons ':gFLT (gFLT msg))
    (cl:cons ':gPR (gPR msg))
    (cl:cons ':gPO (gPO msg))
    (cl:cons ':gCU (gCU msg))
))
