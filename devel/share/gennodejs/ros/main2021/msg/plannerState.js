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

class plannerState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.plan_state = null;
    }
    else {
      if (initObj.hasOwnProperty('plan_state')) {
        this.plan_state = initObj.plan_state
      }
      else {
        this.plan_state = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type plannerState
    // Serialize message field [plan_state]
    bufferOffset = _arraySerializer.int32(obj.plan_state, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type plannerState
    let len;
    let data = new plannerState(null);
    // Deserialize message field [plan_state]
    data.plan_state = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.plan_state.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'main2021/plannerState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f66f0959567ef2a880883da8a8aff308';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] plan_state
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new plannerState(null);
    if (msg.plan_state !== undefined) {
      resolved.plan_state = msg.plan_state;
    }
    else {
      resolved.plan_state = []
    }

    return resolved;
    }
};

module.exports = plannerState;
