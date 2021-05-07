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

class mission_srvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action = null;
      this.action_pos = null;
      this.cup = null;
      this.hand = null;
    }
    else {
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = 0;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mission_srvRequest
    // Serialize message field [action]
    bufferOffset = _serializer.int32(obj.action, buffer, bufferOffset);
    // Serialize message field [action_pos]
    bufferOffset = _arraySerializer.float32(obj.action_pos, buffer, bufferOffset, null);
    // Serialize message field [cup]
    bufferOffset = _arraySerializer.int32(obj.cup, buffer, bufferOffset, null);
    // Serialize message field [hand]
    bufferOffset = _arraySerializer.int32(obj.hand, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mission_srvRequest
    let len;
    let data = new mission_srvRequest(null);
    // Deserialize message field [action]
    data.action = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [action_pos]
    data.action_pos = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [cup]
    data.cup = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [hand]
    data.hand = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.action_pos.length;
    length += 4 * object.cup.length;
    length += 4 * object.hand.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'main2021/mission_srvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '81c9eb2b658b4c187113ebd56c6d5cec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 action
    float32[] action_pos
    int32[] cup
    int32[] hand
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new mission_srvRequest(null);
    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = 0
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

    return resolved;
    }
};

class mission_srvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mission_srvResponse
    // Serialize message field [state]
    bufferOffset = _serializer.int32(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mission_srvResponse
    let len;
    let data = new mission_srvResponse(null);
    // Deserialize message field [state]
    data.state = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'main2021/mission_srvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7a2f37ef2ba405f0c7a15cc72663d6f0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 state
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new mission_srvResponse(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: mission_srvRequest,
  Response: mission_srvResponse,
  md5sum() { return 'bce17d4b6829904ca26b97013468df60'; },
  datatype() { return 'main2021/mission_srv'; }
};
