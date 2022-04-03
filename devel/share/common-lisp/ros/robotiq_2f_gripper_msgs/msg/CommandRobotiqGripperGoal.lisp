; Auto-generated. Do not edit!


(cl:in-package robotiq_2f_gripper_msgs-msg)


;//! \htmlinclude CommandRobotiqGripperGoal.msg.html

(cl:defclass <CommandRobotiqGripperGoal> (roslisp-msg-protocol:ros-message)
  ((emergency_release
    :reader emergency_release
    :initarg :emergency_release
    :type cl:boolean
    :initform cl:nil)
   (emergency_release_dir
    :reader emergency_release_dir
    :initarg :emergency_release_dir
    :type cl:integer
    :initform 0)
   (stop
    :reader stop
    :initarg :stop
    :type cl:boolean
    :initform cl:nil)
   (position
    :reader position
    :initarg :position
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (force
    :reader force
    :initarg :force
    :type cl:float
    :initform 0.0))
)

(cl:defclass CommandRobotiqGripperGoal (<CommandRobotiqGripperGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommandRobotiqGripperGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommandRobotiqGripperGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotiq_2f_gripper_msgs-msg:<CommandRobotiqGripperGoal> is deprecated: use robotiq_2f_gripper_msgs-msg:CommandRobotiqGripperGoal instead.")))

(cl:ensure-generic-function 'emergency_release-val :lambda-list '(m))
(cl:defmethod emergency_release-val ((m <CommandRobotiqGripperGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_2f_gripper_msgs-msg:emergency_release-val is deprecated.  Use robotiq_2f_gripper_msgs-msg:emergency_release instead.")
  (emergency_release m))

(cl:ensure-generic-function 'emergency_release_dir-val :lambda-list '(m))
(cl:defmethod emergency_release_dir-val ((m <CommandRobotiqGripperGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_2f_gripper_msgs-msg:emergency_release_dir-val is deprecated.  Use robotiq_2f_gripper_msgs-msg:emergency_release_dir instead.")
  (emergency_release_dir m))

(cl:ensure-generic-function 'stop-val :lambda-list '(m))
(cl:defmethod stop-val ((m <CommandRobotiqGripperGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_2f_gripper_msgs-msg:stop-val is deprecated.  Use robotiq_2f_gripper_msgs-msg:stop instead.")
  (stop m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <CommandRobotiqGripperGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_2f_gripper_msgs-msg:position-val is deprecated.  Use robotiq_2f_gripper_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <CommandRobotiqGripperGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_2f_gripper_msgs-msg:speed-val is deprecated.  Use robotiq_2f_gripper_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <CommandRobotiqGripperGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotiq_2f_gripper_msgs-msg:force-val is deprecated.  Use robotiq_2f_gripper_msgs-msg:force instead.")
  (force m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommandRobotiqGripperGoal>) ostream)
  "Serializes a message object of type '<CommandRobotiqGripperGoal>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'emergency_release) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'emergency_release_dir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'emergency_release_dir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'emergency_release_dir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'emergency_release_dir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stop) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'force))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommandRobotiqGripperGoal>) istream)
  "Deserializes a message object of type '<CommandRobotiqGripperGoal>"
    (cl:setf (cl:slot-value msg 'emergency_release) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'emergency_release_dir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'emergency_release_dir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'emergency_release_dir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'emergency_release_dir)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'stop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'force) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommandRobotiqGripperGoal>)))
  "Returns string type for a message object of type '<CommandRobotiqGripperGoal>"
  "robotiq_2f_gripper_msgs/CommandRobotiqGripperGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommandRobotiqGripperGoal)))
  "Returns string type for a message object of type 'CommandRobotiqGripperGoal"
  "robotiq_2f_gripper_msgs/CommandRobotiqGripperGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommandRobotiqGripperGoal>)))
  "Returns md5sum for a message object of type '<CommandRobotiqGripperGoal>"
  "017fc0d464f4a4d072ae2519e0fc1789")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommandRobotiqGripperGoal)))
  "Returns md5sum for a message object of type 'CommandRobotiqGripperGoal"
  "017fc0d464f4a4d072ae2519e0fc1789")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommandRobotiqGripperGoal>)))
  "Returns full string definition for message of type '<CommandRobotiqGripperGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# See Robotiq documentation for fields documentation.~%# See Robotiq documentation for fields documentation.~%~%#goal definition~%bool emergency_release~%uint32 emergency_release_dir~%bool stop~%float32 position #[m] Distance in bewteen fingers ~%float32 speed    #[m/s] Speed (Min: 0.013m/s - Max: 0.1m/s)~%float32 force    #[%] Percentage of gripper force to apply (Min: 0.0% - Max: 100.0%)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommandRobotiqGripperGoal)))
  "Returns full string definition for message of type 'CommandRobotiqGripperGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# See Robotiq documentation for fields documentation.~%# See Robotiq documentation for fields documentation.~%~%#goal definition~%bool emergency_release~%uint32 emergency_release_dir~%bool stop~%float32 position #[m] Distance in bewteen fingers ~%float32 speed    #[m/s] Speed (Min: 0.013m/s - Max: 0.1m/s)~%float32 force    #[%] Percentage of gripper force to apply (Min: 0.0% - Max: 100.0%)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommandRobotiqGripperGoal>))
  (cl:+ 0
     1
     4
     1
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommandRobotiqGripperGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'CommandRobotiqGripperGoal
    (cl:cons ':emergency_release (emergency_release msg))
    (cl:cons ':emergency_release_dir (emergency_release_dir msg))
    (cl:cons ':stop (stop msg))
    (cl:cons ':position (position msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':force (force msg))
))
