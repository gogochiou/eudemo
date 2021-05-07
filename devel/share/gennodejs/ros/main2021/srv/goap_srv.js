// Auto-generated. Do not edit!

// (in-package main2021.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class goap_srvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.my_pos = null;
      this.friend_pos = null;
      this.ns = null;
      this.emergency = null;
      this.team = null;
      this.time = null;
      this.friend_action = null;
      this.action_list = null;
      this.cup_color = null;
      this.cup = null;
      this.hand = null;
      this.enemy1_pos = null;
      this.enemy2_pos = null;
      this.strategy = null;
    }
    else {
      if (initObj.hasOwnProperty('my_pos')) {
        this.my_pos = initObj.my_pos
      }
      else {
        this.my_pos = [];
      }
      if (initObj.hasOwnProperty('friend_pos')) {
        this.friend_pos = initObj.friend_pos
      }
      else {
        this.friend_pos = [];
      }
      if (initObj.hasOwnProperty('ns')) {
        this.ns = initObj.ns
      }
      else {
        this.ns = false;
      }
      if (initObj.hasOwnProperty('emergency')) {
        this.emergency = initObj.emergency
      }
      else {
        this.emergency = false;
      }
      if (initObj.hasOwnProperty('team')) {
        this.team = initObj.team
      }
      else {
        this.team = false;
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0.0;
      }
      if (initObj.hasOwnProperty('friend_action')) {
        this.friend_action = initObj.friend_action
      }
      else {
        this.friend_action = [];
      }
      if (initObj.hasOwnProperty('action_list')) {
        this.action_list = initObj.action_list
      }
      else {
        this.action_list = [];
      }
      if (initObj.hasOwnProperty('cup_color')) {
        this.cup_color = initObj.cup_color
      }
      else {
        this.cup_color = [];
      }
      if (initObj.hasOwnProperty('cup')) {
        this.cup = initObj.cup
      }
      else {
        this.cup = 0;
      }
      if (initObj.hasOwnProperty('hand')) {
        this.hand = initObj.hand
      }
      else {
        this.hand = [];
      }
      if (initObj.hasOwnProperty('enemy1_pos')) {
        this.enemy1_pos = initObj.enemy1_pos
      }
      else {
        this.enemy1_pos = [];
      }
      if (initObj.hasOwnProperty('enemy2_pos')) {
        this.enemy2_pos = initObj.enemy2_pos
      }
      else {
        this.enemy2_pos = [];
      }
      if (initObj.hasOwnProperty('strategy')) {
        this.strategy = initObj.strategy
      }
      else {
        this.strategy = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type goap_srvRequest
    // Serialize message field [my_pos]
    bufferOffset = _arraySerializer.float32(obj.my_pos, buffer, bufferOffset, null);
    // Serialize message field [friend_pos]
    bufferOffset = _arraySerializer.float32(obj.friend_pos, buffer, bufferOffset, null);
    // Serialize message field [ns]
    bufferOffset = _serializer.bool(obj.ns, buffer, bufferOffset);
    // Serialize message field [emergency]
    bufferOffset = _serializer.bool(obj.emergency, buffer, bufferOffset);
    // Serialize message field [team]
    bufferOffset = _serializer.bool(obj.team, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.float32(obj.time, buffer, bufferOffset);
    // Serialize message field [friend_action]
    bufferOffset = _arraySerializer.int32(obj.friend_action, buffer, bufferOffset, null);
    // Serialize message field [action_list]
    bufferOffset = _arraySerializer.int32(obj.action_list, buffer, bufferOffset, null);
    // Serialize message field [cup_color]
    bufferOffset = _arraySerializer.int32(obj.cup_color, buffer, bufferOffset, null);
    // Serialize message field [cup]
    bufferOffset = _serializer.int32(obj.cup, buffer, bufferOffset);
    // Serialize message field [hand]
    bufferOffset = _arraySerializer.int32(obj.hand, buffer, bufferOffset, null);
    // Serialize message field [enemy1_pos]
    bufferOffset = _arraySerializer.float32(obj.enemy1_pos, buffer, bufferOffset, null);
    // Serialize message field [enemy2_pos]
    bufferOffset = _arraySerializer.float32(obj.enemy2_pos, buffer, bufferOffset, null);
    // Serialize message field [strategy]
    bufferOffset = _serializer.int32(obj.strategy, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type goap_srvRequest
    let len;
    let data = new goap_srvRequest(null);
    // Deserialize message field [my_pos]
    data.my_pos = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [friend_pos]
    data.friend_pos = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [ns]
    data.ns = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [emergency]
    data.emergency = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [team]
    data.team = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [friend_action]
    data.friend_action = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [action_list]
    data.action_list = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [cup_color]
    data.cup_color = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [cup]
    data.cup = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [hand]
    data.hand = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [enemy1_pos]
    data.enemy1_pos = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [enemy2_pos]
    data.enemy2_pos = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [strategy]
    data.strategy = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.my_pos.length;
    length += 4 * object.friend_pos.length;
    length += 4 * object.friend_action.length;
    length += 4 * object.action_list.length;
    length += 4 * object.cup_color.length;
    length += 4 * object.hand.length;
    length += 4 * object.enemy1_pos.length;
    length += 4 * object.enemy2_pos.length;
    return length + 47;
  }

  static datatype() {
    // Returns string type for a service object
    return 'main2021/goap_srvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd1490fd0b27b9ab372d3cb1990ac81e9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] my_pos
    float32[] friend_pos
    bool ns
    bool emergency
    bool team
    float32 time
    int32[] friend_action
    int32[] action_list
    int32[] cup_color
    int32 cup
    int32[] hand
    float32[] enemy1_pos
    float32[] enemy2_pos
    int32 strategy
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new goap_srvRequest(null);
    if (msg.my_pos !== undefined) {
      resolved.my_pos = msg.my_pos;
    }
    else {
      resolved.my_pos = []
    }

    if (msg.friend_pos !== undefined) {
      resolved.friend_pos = msg.friend_pos;
    }
    else {
      resolved.friend_pos = []
    }

    if (msg.ns !== undefined) {
      resolved.ns = msg.ns;
    }
    else {
      resolved.ns = false
    }

    if (msg.emergency !== undefined) {
      resolved.emergency = msg.emergency;
    }
    else {
      resolved.emergency = false
    }

    if (msg.team !== undefined) {
      resolved.team = msg.team;
    }
    else {
      resolved.team = false
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0.0
    }

    if (msg.friend_action !== undefined) {
      resolved.friend_action = msg.friend_action;
    }
    else {
      resolved.friend_action = []
    }

    if (msg.action_list !== undefined) {
      resolved.action_list = msg.action_list;
    }
    else {
      resolved.action_list = []
    }

    if (msg.cup_color !== undefined) {
      resolved.cup_color = msg.cup_color;
    }
    else {
      resolved.cup_color = []
    }

    if (msg.cup !== undefined) {
      resolved.cup = msg.cup;
    }
    else {
      resolved.cup = 0
    }

    if (msg.hand !== undefined) {
      resolved.hand = msg.hand;
    }
    else {
      resolved.hand = []
    }

    if (msg.enemy1_pos !== undefined) {
      resolved.enemy1_pos = msg.enemy1_pos;
    }
    else {
      resolved.enemy1_pos = []
    }

    if (msg.enemy2_pos !== undefined) {
      resolved.enemy2_pos = msg.enemy2_pos;
    }
    else {
      resolved.enemy2_pos = []
    }

    if (msg.strategy !== undefined) {
      resolved.strategy = msg.strategy;
    }
    else {
      resolved.strategy = 0
    }

    return resolved;
    }
};

class goap_srvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action = null;
      this.position = null;
      this.cup = null;
    }
    else {
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = [];
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = [];
      }
      if (initObj.hasOwnProperty('cup')) {
        this.cup = initObj.cup
      }
      else {
        this.cup = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type goap_srvResponse
    // Serialize message field [action]
    bufferOffset = _arraySerializer.int32(obj.action, buffer, bufferOffset, null);
    // Serialize message field [position]
    bufferOffset = _arraySerializer.float32(obj.position, buffer, bufferOffset, null);
    // Serialize message field [cup]
    bufferOffset = _arraySerializer.int32(obj.cup, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type goap_srvResponse
    let len;
    let data = new goap_srvResponse(null);
    // Deserialize message field [action]
    data.action = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [position]
    data.position = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [cup]
    data.cup = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.action.length;
    length += 4 * object.position.length;
    length += 4 * object.cup.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'main2021/goap_srvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2169fa9d7628a56d4dc281fba88acaa2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] action
    float32[] position
    int32[] cup
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new goap_srvResponse(null);
    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = []
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = []
    }

    if (msg.cup !== undefined) {
      resolved.cup = msg.cup;
    }
    else {
      resolved.cup = []
    }

    return resolved;
    }
};

module.exports = {
  Request: goap_srvRequest,
  Response: goap_srvResponse,
  md5sum() { return '93ddba8ccf100824f0cb0d18004bda97'; },
  datatype() { return 'main2021/goap_srv'; }
};
