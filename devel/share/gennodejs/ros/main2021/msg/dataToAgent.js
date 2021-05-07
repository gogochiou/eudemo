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

class dataToAgent {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.fx = null;
      this.fy = null;
      this.degree = null;
      this.action = null;
      this.action_list = null;
      this.cup_color = null;
      this.cup = null;
      this.script = null;
      this.ns = null;
      this.team = null;
      this.time = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('fx')) {
        this.fx = initObj.fx
      }
      else {
        this.fx = 0.0;
      }
      if (initObj.hasOwnProperty('fy')) {
        this.fy = initObj.fy
      }
      else {
        this.fy = 0.0;
      }
      if (initObj.hasOwnProperty('degree')) {
        this.degree = initObj.degree
      }
      else {
        this.degree = 0.0;
      }
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = [];
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
      if (initObj.hasOwnProperty('script')) {
        this.script = initObj.script
      }
      else {
        this.script = 0;
      }
      if (initObj.hasOwnProperty('ns')) {
        this.ns = initObj.ns
      }
      else {
        this.ns = false;
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
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type dataToAgent
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [fx]
    bufferOffset = _serializer.float32(obj.fx, buffer, bufferOffset);
    // Serialize message field [fy]
    bufferOffset = _serializer.float32(obj.fy, buffer, bufferOffset);
    // Serialize message field [degree]
    bufferOffset = _serializer.float32(obj.degree, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = _arraySerializer.int32(obj.action, buffer, bufferOffset, null);
    // Serialize message field [action_list]
    bufferOffset = _arraySerializer.int32(obj.action_list, buffer, bufferOffset, null);
    // Serialize message field [cup_color]
    bufferOffset = _arraySerializer.int32(obj.cup_color, buffer, bufferOffset, null);
    // Serialize message field [cup]
    bufferOffset = _serializer.int32(obj.cup, buffer, bufferOffset);
    // Serialize message field [script]
    bufferOffset = _serializer.int32(obj.script, buffer, bufferOffset);
    // Serialize message field [ns]
    bufferOffset = _serializer.bool(obj.ns, buffer, bufferOffset);
    // Serialize message field [team]
    bufferOffset = _serializer.bool(obj.team, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.float32(obj.time, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type dataToAgent
    let len;
    let data = new dataToAgent(null);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fx]
    data.fx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fy]
    data.fy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [degree]
    data.degree = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [action_list]
    data.action_list = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [cup_color]
    data.cup_color = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [cup]
    data.cup = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [script]
    data.script = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ns]
    data.ns = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [team]
    data.team = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.action.length;
    length += 4 * object.action_list.length;
    length += 4 * object.cup_color.length;
    return length + 50;
  }

  static datatype() {
    // Returns string type for a message object
    return 'main2021/dataToAgent';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '56de11d3f3dff1ceee2e16f5c9720d89';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 x
    float32 y
    float32 fx
    float32 fy
    float32 degree
    int32[] action
    int32[] action_list
    int32[] cup_color
    int32 cup
    int32 script
    bool ns
    bool team
    float32 time
    int32 status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new dataToAgent(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.fx !== undefined) {
      resolved.fx = msg.fx;
    }
    else {
      resolved.fx = 0.0
    }

    if (msg.fy !== undefined) {
      resolved.fy = msg.fy;
    }
    else {
      resolved.fy = 0.0
    }

    if (msg.degree !== undefined) {
      resolved.degree = msg.degree;
    }
    else {
      resolved.degree = 0.0
    }

    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = []
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

    if (msg.script !== undefined) {
      resolved.script = msg.script;
    }
    else {
      resolved.script = 0
    }

    if (msg.ns !== undefined) {
      resolved.ns = msg.ns;
    }
    else {
      resolved.ns = false
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

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    return resolved;
    }
};

module.exports = dataToAgent;
