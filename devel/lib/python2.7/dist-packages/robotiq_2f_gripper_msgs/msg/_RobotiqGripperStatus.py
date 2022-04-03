# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from robotiq_2f_gripper_msgs/RobotiqGripperStatus.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class RobotiqGripperStatus(genpy.Message):
  _md5sum = "b008656b72baf8ed957040c01e114fed"
  _type = "robotiq_2f_gripper_msgs/RobotiqGripperStatus"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """# See Robotiq documentation for fields documentation.
Header header
bool is_ready
bool is_reset
bool is_moving
bool obj_detected
uint8 fault_status
float32 position     #[m] Distance in bewteen fingers 
float32 requested_position
float32 current 
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
"""
  __slots__ = ['header','is_ready','is_reset','is_moving','obj_detected','fault_status','position','requested_position','current']
  _slot_types = ['std_msgs/Header','bool','bool','bool','bool','uint8','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,is_ready,is_reset,is_moving,obj_detected,fault_status,position,requested_position,current

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RobotiqGripperStatus, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.is_ready is None:
        self.is_ready = False
      if self.is_reset is None:
        self.is_reset = False
      if self.is_moving is None:
        self.is_moving = False
      if self.obj_detected is None:
        self.obj_detected = False
      if self.fault_status is None:
        self.fault_status = 0
      if self.position is None:
        self.position = 0.
      if self.requested_position is None:
        self.requested_position = 0.
      if self.current is None:
        self.current = 0.
    else:
      self.header = std_msgs.msg.Header()
      self.is_ready = False
      self.is_reset = False
      self.is_moving = False
      self.obj_detected = False
      self.fault_status = 0
      self.position = 0.
      self.requested_position = 0.
      self.current = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_5B3f().pack(_x.is_ready, _x.is_reset, _x.is_moving, _x.obj_detected, _x.fault_status, _x.position, _x.requested_position, _x.current))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 17
      (_x.is_ready, _x.is_reset, _x.is_moving, _x.obj_detected, _x.fault_status, _x.position, _x.requested_position, _x.current,) = _get_struct_5B3f().unpack(str[start:end])
      self.is_ready = bool(self.is_ready)
      self.is_reset = bool(self.is_reset)
      self.is_moving = bool(self.is_moving)
      self.obj_detected = bool(self.obj_detected)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_5B3f().pack(_x.is_ready, _x.is_reset, _x.is_moving, _x.obj_detected, _x.fault_status, _x.position, _x.requested_position, _x.current))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 17
      (_x.is_ready, _x.is_reset, _x.is_moving, _x.obj_detected, _x.fault_status, _x.position, _x.requested_position, _x.current,) = _get_struct_5B3f().unpack(str[start:end])
      self.is_ready = bool(self.is_ready)
      self.is_reset = bool(self.is_reset)
      self.is_moving = bool(self.is_moving)
      self.obj_detected = bool(self.obj_detected)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_5B3f = None
def _get_struct_5B3f():
    global _struct_5B3f
    if _struct_5B3f is None:
        _struct_5B3f = struct.Struct("<5B3f")
    return _struct_5B3f
