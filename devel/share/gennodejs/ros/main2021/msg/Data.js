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

class Data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.big_chicken_pos = null;
      this.small_chicken_pos = null;
      this.big_action = null;
      this.small_action = null;
      this.big_action_list = null;
      this.small_action_list = null;
      this.big_cup = null;
      this.small_cup = null;
      this.team = null;
      this.status = null;
      this.small_score = null;
      this.big_score = null;
    }
    else {
      if (initObj.hasOwnProperty('big_chicken_pos')) {
        this.big_chicken_pos = initObj.big_chicken_pos
      }
      else {
        this.big_chicken_pos = [];
      }
      if (initObj.hasOwnProperty('small_chicken_pos')) {
        this.small_chicken_pos = initObj.small_chicken_pos
      }
      else {
        this.small_chicken_pos = [];
      }
      if (initObj.hasOwnProperty('big_action')) {
        this.big_action = initObj.big_action
      }
      else {
        this.big_action = [];
      }
      if (initObj.hasOwnProperty('small_action')) {
        this.small_action = initObj.small_action
      }
      else {
        this.small_action = [];
      }
      if (initObj.hasOwnProperty('big_action_list')) {
        this.big_action_list = initObj.big_action_list
      }
      else {
        this.big_action_list = [];
      }
      if (initObj.hasOwnProperty('small_action_list')) {
        this.small_action_list = initObj.small_action_list
      }
      else {
        this.small_action_list = [];
      }
      if (initObj.hasOwnProperty('big_cup')) {
        this.big_cup = initObj.big_cup
      }
      else {
        this.big_cup = 0;
      }
      if (initObj.hasOwnProperty('small_cup')) {
        this.small_cup = initObj.small_cup
      }
      else {
        this.small_cup = 0;
      }
      if (initObj.hasOwnProperty('team')) {
        this.team = initObj.team
      }
      else {
        this.team = false;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('small_score')) {
        this.small_score = initObj.small_score
      }
      else {
        this.small_score = 0;
      }
      if (initObj.hasOwnProperty('big_score')) {
        this.big_score = initObj.big_score
      }
      else {
        this.big_score = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Data
    // Serialize message field [big_chicken_pos]
    bufferOffset = _arraySerializer.float32(obj.big_chicken_pos, buffer, bufferOffset, null);
    // Serialize message field [small_chicken_pos]
    bufferOffset = _arraySerializer.float32(obj.small_chicken_pos, buffer, bufferOffset, null);
    // Serialize message field [big_action]
    bufferOffset = _arraySerializer.int32(obj.big_action, buffer, bufferOffset, null);
    // Serialize message field [small_action]
    bufferOffset = _arraySerializer.int32(obj.small_action, buffer, bufferOffset, null);
    // Serialize message field [big_action_list]
    bufferOffset = _arraySerializer.int32(obj.big_action_list, buffer, bufferOffset, null);
    // Serialize message field [small_action_list]
    bufferOffset = _arraySerializer.int32(obj.small_action_list, buffer, bufferOffset, null);
    // Serialize message field [big_cup]
    bufferOffset = _serializer.int32(obj.big_cup, buffer, bufferOffset);
    // Serialize message field [small_cup]
    bufferOffset = _serializer.int32(obj.small_cup, buffer, bufferOffset);
    // Serialize message field [team]
    bufferOffset = _serializer.bool(obj.team, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [small_score]
    bufferOffset = _serializer.int32(obj.small_score, buffer, bufferOffset);
    // Serialize message field [big_score]
    bufferOffset = _serializer.int32(obj.big_score, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Data
    let len;
    let data = new Data(null);
    // Deserialize message field [big_chicken_pos]
    data.big_chicken_pos = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [small_chicken_pos]
    data.small_chicken_pos = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [big_action]
    data.big_action = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [small_action]
    data.small_action = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [big_action_list]
    data.big_action_list = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [small_action_list]
    data.small_action_list = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [big_cup]
    data.big_cup = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [small_cup]
    data.small_cup = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [team]
    data.team = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [small_score]
    data.small_score = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [big_score]
    data.big_score = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.big_chicken_pos.length;
    length += 4 * object.small_chicken_pos.length;
    length += 4 * object.big_action.length;
    length += 4 * object.small_action.length;
    length += 4 * object.big_action_list.length;
    length += 4 * object.small_action_list.length;
    return length + 45;
  }

  static datatype() {
    // Returns string type for a message object
    return 'main2021/Data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a4e5f8be870de6fe33323461ba490ff0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] big_chicken_pos
    float32[] small_chicken_pos
    int32[] big_action
    int32[] small_action
    int32[] big_action_list
    int32[] small_action_list
    int32 big_cup
    int32 small_cup
    bool team
    int32 status
    int32 small_score
    int32 big_score
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Data(null);
    if (msg.big_chicken_pos !== undefined) {
      resolved.big_chicken_pos = msg.big_chicken_pos;
    }
    else {
      resolved.big_chicken_pos = []
    }

    if (msg.small_chicken_pos !== undefined) {
      resolved.small_chicken_pos = msg.small_chicken_pos;
    }
    else {
      resolved.small_chicken_pos = []
    }

    if (msg.big_action !== undefined) {
      resolved.big_action = msg.big_action;
    }
    else {
      resolved.big_action = []
    }

    if (msg.small_action !== undefined) {
      resolved.small_action = msg.small_action;
    }
    else {
      resolved.small_action = []
    }

    if (msg.big_action_list !== undefined) {
      resolved.big_action_list = msg.big_action_list;
    }
    else {
      resolved.big_action_list = []
    }

    if (msg.small_action_list !== undefined) {
      resolved.small_action_list = msg.small_action_list;
    }
    else {
      resolved.small_action_list = []
    }

    if (msg.big_cup !== undefined) {
      resolved.big_cup = msg.big_cup;
    }
    else {
      resolved.big_cup = 0
    }

    if (msg.small_cup !== undefined) {
      resolved.small_cup = msg.small_cup;
    }
    else {
      resolved.small_cup = 0
    }

    if (msg.team !== undefined) {
      resolved.team = msg.team;
    }
    else {
      resolved.team = false
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.small_score !== undefined) {
      resolved.small_score = msg.small_score;
    }
    else {
      resolved.small_score = 0
    }

    if (msg.big_score !== undefined) {
      resolved.big_score = msg.big_score;
    }
    else {
      resolved.big_score = 0
    }

    return resolved;
    }
};

module.exports = Data;
