# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from main2021/mission_srvRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class mission_srvRequest(genpy.Message):
  _md5sum = "81c9eb2b658b4c187113ebd56c6d5cec"
  _type = "main2021/mission_srvRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int32 action
float32[] action_pos
int32[] cup
int32[] hand
"""
  __slots__ = ['action','action_pos','cup','hand']
  _slot_types = ['int32','float32[]','int32[]','int32[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       action,action_pos,cup,hand

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(mission_srvRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.action is None:
        self.action = 0
      if self.action_pos is None:
        self.action_pos = []
      if self.cup is None:
        self.cup = []
      if self.hand is None:
        self.hand = []
    else:
      self.action = 0
      self.action_pos = []
      self.cup = []
      self.hand = []

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
      _x = self.action
      buff.write(_get_struct_i().pack(_x))
      length = len(self.action_pos)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.Struct(pattern).pack(*self.action_pos))
      length = len(self.cup)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(struct.Struct(pattern).pack(*self.cup))
      length = len(self.hand)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(struct.Struct(pattern).pack(*self.hand))
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
      end += 4
      (self.action,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.action_pos = s.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.cup = s.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.hand = s.unpack(str[start:end])
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
      _x = self.action
      buff.write(_get_struct_i().pack(_x))
      length = len(self.action_pos)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.action_pos.tostring())
      length = len(self.cup)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(self.cup.tostring())
      length = len(self.hand)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(self.hand.tostring())
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
      end += 4
      (self.action,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.action_pos = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.cup = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.hand = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=length)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from main2021/mission_srvResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class mission_srvResponse(genpy.Message):
  _md5sum = "7a2f37ef2ba405f0c7a15cc72663d6f0"
  _type = "main2021/mission_srvResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int32 state


"""
  __slots__ = ['state']
  _slot_types = ['int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       state

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(mission_srvResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.state is None:
        self.state = 0
    else:
      self.state = 0

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
      _x = self.state
      buff.write(_get_struct_i().pack(_x))
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
      end += 4
      (self.state,) = _get_struct_i().unpack(str[start:end])
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
      _x = self.state
      buff.write(_get_struct_i().pack(_x))
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
      end += 4
      (self.state,) = _get_struct_i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
class mission_srv(object):
  _type          = 'main2021/mission_srv'
  _md5sum = 'bce17d4b6829904ca26b97013468df60'
  _request_class  = mission_srvRequest
  _response_class = mission_srvResponse
