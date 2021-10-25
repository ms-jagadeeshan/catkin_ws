# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from open_manipulator_msgs/SetKinematicsPoseRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import open_manipulator_msgs.msg

class SetKinematicsPoseRequest(genpy.Message):
  _md5sum = "c4791502d3cd986f50c19faec2e660dc"
  _type = "open_manipulator_msgs/SetKinematicsPoseRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """string planning_group
string end_effector_name
KinematicsPose kinematics_pose
float64 path_time

================================================================================
MSG: open_manipulator_msgs/KinematicsPose
geometry_msgs/Pose  pose
float64    max_accelerations_scaling_factor
float64    max_velocity_scaling_factor
float64    tolerance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
"""
  __slots__ = ['planning_group','end_effector_name','kinematics_pose','path_time']
  _slot_types = ['string','string','open_manipulator_msgs/KinematicsPose','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       planning_group,end_effector_name,kinematics_pose,path_time

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SetKinematicsPoseRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.planning_group is None:
        self.planning_group = ''
      if self.end_effector_name is None:
        self.end_effector_name = ''
      if self.kinematics_pose is None:
        self.kinematics_pose = open_manipulator_msgs.msg.KinematicsPose()
      if self.path_time is None:
        self.path_time = 0.
    else:
      self.planning_group = ''
      self.end_effector_name = ''
      self.kinematics_pose = open_manipulator_msgs.msg.KinematicsPose()
      self.path_time = 0.

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
      _x = self.planning_group
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.end_effector_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_11d().pack(_x.kinematics_pose.pose.position.x, _x.kinematics_pose.pose.position.y, _x.kinematics_pose.pose.position.z, _x.kinematics_pose.pose.orientation.x, _x.kinematics_pose.pose.orientation.y, _x.kinematics_pose.pose.orientation.z, _x.kinematics_pose.pose.orientation.w, _x.kinematics_pose.max_accelerations_scaling_factor, _x.kinematics_pose.max_velocity_scaling_factor, _x.kinematics_pose.tolerance, _x.path_time))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.kinematics_pose is None:
        self.kinematics_pose = open_manipulator_msgs.msg.KinematicsPose()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.planning_group = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.planning_group = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.end_effector_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.end_effector_name = str[start:end]
      _x = self
      start = end
      end += 88
      (_x.kinematics_pose.pose.position.x, _x.kinematics_pose.pose.position.y, _x.kinematics_pose.pose.position.z, _x.kinematics_pose.pose.orientation.x, _x.kinematics_pose.pose.orientation.y, _x.kinematics_pose.pose.orientation.z, _x.kinematics_pose.pose.orientation.w, _x.kinematics_pose.max_accelerations_scaling_factor, _x.kinematics_pose.max_velocity_scaling_factor, _x.kinematics_pose.tolerance, _x.path_time,) = _get_struct_11d().unpack(str[start:end])
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
      _x = self.planning_group
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.end_effector_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_11d().pack(_x.kinematics_pose.pose.position.x, _x.kinematics_pose.pose.position.y, _x.kinematics_pose.pose.position.z, _x.kinematics_pose.pose.orientation.x, _x.kinematics_pose.pose.orientation.y, _x.kinematics_pose.pose.orientation.z, _x.kinematics_pose.pose.orientation.w, _x.kinematics_pose.max_accelerations_scaling_factor, _x.kinematics_pose.max_velocity_scaling_factor, _x.kinematics_pose.tolerance, _x.path_time))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.kinematics_pose is None:
        self.kinematics_pose = open_manipulator_msgs.msg.KinematicsPose()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.planning_group = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.planning_group = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.end_effector_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.end_effector_name = str[start:end]
      _x = self
      start = end
      end += 88
      (_x.kinematics_pose.pose.position.x, _x.kinematics_pose.pose.position.y, _x.kinematics_pose.pose.position.z, _x.kinematics_pose.pose.orientation.x, _x.kinematics_pose.pose.orientation.y, _x.kinematics_pose.pose.orientation.z, _x.kinematics_pose.pose.orientation.w, _x.kinematics_pose.max_accelerations_scaling_factor, _x.kinematics_pose.max_velocity_scaling_factor, _x.kinematics_pose.tolerance, _x.path_time,) = _get_struct_11d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_11d = None
def _get_struct_11d():
    global _struct_11d
    if _struct_11d is None:
        _struct_11d = struct.Struct("<11d")
    return _struct_11d
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from open_manipulator_msgs/SetKinematicsPoseResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class SetKinematicsPoseResponse(genpy.Message):
  _md5sum = "2638cc2443b1469b0e9e152083d7128d"
  _type = "open_manipulator_msgs/SetKinematicsPoseResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """bool is_planned

"""
  __slots__ = ['is_planned']
  _slot_types = ['bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       is_planned

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SetKinematicsPoseResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.is_planned is None:
        self.is_planned = False
    else:
      self.is_planned = False

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
      _x = self.is_planned
      buff.write(_get_struct_B().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 1
      (self.is_planned,) = _get_struct_B().unpack(str[start:end])
      self.is_planned = bool(self.is_planned)
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
      _x = self.is_planned
      buff.write(_get_struct_B().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 1
      (self.is_planned,) = _get_struct_B().unpack(str[start:end])
      self.is_planned = bool(self.is_planned)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
class SetKinematicsPose(object):
  _type          = 'open_manipulator_msgs/SetKinematicsPose'
  _md5sum = 'cce8ad8b6eb29e4b0e3449a09848786e'
  _request_class  = SetKinematicsPoseRequest
  _response_class = SetKinematicsPoseResponse
