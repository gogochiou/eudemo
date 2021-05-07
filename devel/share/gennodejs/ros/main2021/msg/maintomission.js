// Auto-generated. Do not edit!

// (in-package main2021.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class maintomission {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.team = null;
      this.action = null;
      this.planer_state = null;
      this.action_pos = null;
      this.cup = null;
      this.hand = null;
      this.reef = null;
      this.NS = null;
      this.emerg = null;
    }
    else {
      if (initObj.hasOwnProperty('team')) {
        this.team = initObj.team
      }
      else {
        this.team = 0;
      }
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = 0;
      }
      if (initObj.hasOwnProperty('planer_state')) {
        this.planer_state = initObj.planer_state
      }
      else {
        this.planer_state = 0;
      }
      if (initObj.hasOwnProperty('action_pos')) {
        this.action_pos = initObj.action_pos
      }
      else {
        this.action_pos = [];
      }
      if (initObj.hasOwnProperty('cup')) {
        this.cup = initObj.cup
      }
      else {
        this.cup = [];
      }
      if (initObj.hasOwnProperty('hand')) {
        this.hand = initObj.hand
      }
      else {
        this.hand = [];
      }
      if (initObj.hasOwnProperty('reef')) {
        this.reef = initObj.reef
      }
      else {
        this.reef = [];
      }
      if (initObj.hasOwnProperty('NS')) {
        this.NS = initObj.NS
      }
      else {
        this.NS = false;
      }
      if (initObj.hasOwnProperty('emerg')) {
        this.emerg = initObj.emerg
      }
      else {
        this.emerg = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type maintomission
    // Serialize message field [team]
    bufferOffset = _serializer.int32(obj.team, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = _serializer.int32(obj.action, buffer, bufferOffset);
    // Serialize message field [planer_state]
    bufferOffset = _serializer.int32(obj.planer_state, buffer, bufferOffset);
    // Serialize message field [action_pos]
    bufferOffset = _arraySerializer.float32(obj.action_pos, buffer, bufferOffset, null);
    // Serialize message field [cup]
    bufferOffset = _arraySerializer.int32(obj.cup, buffer, bufferOffset, null);
    // Serialize message field [hand]
    bufferOffset = _arraySerializer.int32(obj.hand, buffer, bufferOffset, null);
    // Serialize message field [reef]
    bufferOffset = _arraySerializer.int32(obj.reef, buffer, bufferOffset, null);
    // Serialize message field [NS]
    bufferOffset = _serializer.bool(obj.NS, buffer, bufferOffset);
    // Serialize message field [emerg]
    bufferOffset = _serializer.bool(obj.emerg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type maintomission
    let len;
    let data = new maintomission(null);
    // Deserialize message field [team]
    data.team = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [planer_state]
    data.planer_state = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [action_pos]
    data.action_pos = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [cup]
    data.cup = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [hand]
    data.hand = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [reef]
    data.reef = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [NS]
    data.NS = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [emerg]
    data.emerg = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.action_pos.length;
    length += 4 * object.cup.length;
    length += 4 * object.hand.length;
    length += 4 * object.reef.length;
    return length + 30;
  }

  static datatype() {
    // Returns string type for a message object
    return 'main2021/maintomission';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a6c4bebd0fdd628f3d960dc0cc16a1cf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 team
    int32 action
    int32 planer_state
    float32[] action_pos
    int32[] cup
    int32[] hand
    int32[] reef
    bool NS
    bool emerg
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new maintomission(null);
    if (msg.team !== undefined) {
      resolved.team = msg.team;
    }
    else {
      resolved.team = 0
    }

    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = 0
    }

    if (msg.planer_state !== undefined) {
      resolved.planer_state = msg.planer_state;
    }
    else {
      resolved.planer_state = 0
    }

    if (msg.action_pos !== undefined) {
      resolved.action_pos = msg.action_pos;
    }
    else {
      resolved.action_pos = []
    }

    if (msg.cup !== undefined) {
      resolved.cup = msg.cup;
    }
    else {
      resolved.cup = []
    }

    if (msg.hand !== undefined) {
      resolved.hand = msg.hand;
    }
    else {
      resolved.hand = []
    }

    if (msg.reef !== undefined) {
      resolved.reef = msg.reef;
    }
    else {
      resolved.reef = []
    }

    if (msg.NS !== undefined) {
      resolved.NS = msg.NS;
    }
    else {
      resolved.NS = false
    }

    if (msg.emerg !== undefined) {
      resolved.emerg = msg.emerg;
    }
    else {
      resolved.emerg = false
    }

    return resolved;
    }
};

module.exports = maintomission;
