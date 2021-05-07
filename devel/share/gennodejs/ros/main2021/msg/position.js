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

class position {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.my_x = null;
      this.my_y = null;
      this.my_z = null;
      this.my_degreex = null;
      this.my_degreey = null;
      this.my_degreez = null;
      this.my_degreew = null;
    }
    else {
      if (initObj.hasOwnProperty('my_x')) {
        this.my_x = initObj.my_x
      }
      else {
        this.my_x = 0.0;
      }
      if (initObj.hasOwnProperty('my_y')) {
        this.my_y = initObj.my_y
      }
      else {
        this.my_y = 0.0;
      }
      if (initObj.hasOwnProperty('my_z')) {
        this.my_z = initObj.my_z
      }
      else {
        this.my_z = 0.0;
      }
      if (initObj.hasOwnProperty('my_degreex')) {
        this.my_degreex = initObj.my_degreex
      }
      else {
        this.my_degreex = 0.0;
      }
      if (initObj.hasOwnProperty('my_degreey')) {
        this.my_degreey = initObj.my_degreey
      }
      else {
        this.my_degreey = 0.0;
      }
      if (initObj.hasOwnProperty('my_degreez')) {
        this.my_degreez = initObj.my_degreez
      }
      else {
        this.my_degreez = 0.0;
      }
      if (initObj.hasOwnProperty('my_degreew')) {
        this.my_degreew = initObj.my_degreew
      }
      else {
        this.my_degreew = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type position
    // Serialize message field [my_x]
    bufferOffset = _serializer.float32(obj.my_x, buffer, bufferOffset);
    // Serialize message field [my_y]
    bufferOffset = _serializer.float32(obj.my_y, buffer, bufferOffset);
    // Serialize message field [my_z]
    bufferOffset = _serializer.float32(obj.my_z, buffer, bufferOffset);
    // Serialize message field [my_degreex]
    bufferOffset = _serializer.float32(obj.my_degreex, buffer, bufferOffset);
    // Serialize message field [my_degreey]
    bufferOffset = _serializer.float32(obj.my_degreey, buffer, bufferOffset);
    // Serialize message field [my_degreez]
    bufferOffset = _serializer.float32(obj.my_degreez, buffer, bufferOffset);
    // Serialize message field [my_degreew]
    bufferOffset = _serializer.float32(obj.my_degreew, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type position
    let len;
    let data = new position(null);
    // Deserialize message field [my_x]
    data.my_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [my_y]
    data.my_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [my_z]
    data.my_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [my_degreex]
    data.my_degreex = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [my_degreey]
    data.my_degreey = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [my_degreez]
    data.my_degreez = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [my_degreew]
    data.my_degreew = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'main2021/position';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '04836b89de39e862e20e94175e8fc855';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 my_x
    float32 my_y
    float32 my_z
    float32 my_degreex
    float32 my_degreey
    float32 my_degreez
    float32 my_degreew
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new position(null);
    if (msg.my_x !== undefined) {
      resolved.my_x = msg.my_x;
    }
    else {
      resolved.my_x = 0.0
    }

    if (msg.my_y !== undefined) {
      resolved.my_y = msg.my_y;
    }
    else {
      resolved.my_y = 0.0
    }

    if (msg.my_z !== undefined) {
      resolved.my_z = msg.my_z;
    }
    else {
      resolved.my_z = 0.0
    }

    if (msg.my_degreex !== undefined) {
      resolved.my_degreex = msg.my_degreex;
    }
    else {
      resolved.my_degreex = 0.0
    }

    if (msg.my_degreey !== undefined) {
      resolved.my_degreey = msg.my_degreey;
    }
    else {
      resolved.my_degreey = 0.0
    }

    if (msg.my_degreez !== undefined) {
      resolved.my_degreez = msg.my_degreez;
    }
    else {
      resolved.my_degreez = 0.0
    }

    if (msg.my_degreew !== undefined) {
      resolved.my_degreew = msg.my_degreew;
    }
    else {
      resolved.my_degreew = 0.0
    }

    return resolved;
    }
};

module.exports = position;
