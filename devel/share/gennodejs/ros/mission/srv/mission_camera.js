// Auto-generated. Do not edit!

// (in-package mission.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class mission_cameraRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.coordinate_mission = null;
      this.cup_color_mission = null;
    }
    else {
      if (initObj.hasOwnProperty('coordinate_mission')) {
        this.coordinate_mission = initObj.coordinate_mission
      }
      else {
        this.coordinate_mission = [];
      }
      if (initObj.hasOwnProperty('cup_color_mission')) {
        this.cup_color_mission = initObj.cup_color_mission
      }
      else {
        this.cup_color_mission = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mission_cameraRequest
    // Serialize message field [coordinate_mission]
    bufferOffset = _arraySerializer.int32(obj.coordinate_mission, buffer, bufferOffset, null);
    // Serialize message field [cup_color_mission]
    bufferOffset = _serializer.int32(obj.cup_color_mission, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mission_cameraRequest
    let len;
    let data = new mission_cameraRequest(null);
    // Deserialize message field [coordinate_mission]
    data.coordinate_mission = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [cup_color_mission]
    data.cup_color_mission = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.coordinate_mission.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mission/mission_cameraRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8f244f5f66fa08f28785e512a4118b51';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] coordinate_mission
    int32 cup_color_mission
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new mission_cameraRequest(null);
    if (msg.coordinate_mission !== undefined) {
      resolved.coordinate_mission = msg.coordinate_mission;
    }
    else {
      resolved.coordinate_mission = []
    }

    if (msg.cup_color_mission !== undefined) {
      resolved.cup_color_mission = msg.cup_color_mission;
    }
    else {
      resolved.cup_color_mission = 0
    }

    return resolved;
    }
};

class mission_cameraResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.coordinate_camera = null;
      this.cup_color_camera = null;
    }
    else {
      if (initObj.hasOwnProperty('coordinate_camera')) {
        this.coordinate_camera = initObj.coordinate_camera
      }
      else {
        this.coordinate_camera = [];
      }
      if (initObj.hasOwnProperty('cup_color_camera')) {
        this.cup_color_camera = initObj.cup_color_camera
      }
      else {
        this.cup_color_camera = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mission_cameraResponse
    // Serialize message field [coordinate_camera]
    bufferOffset = _arraySerializer.int32(obj.coordinate_camera, buffer, bufferOffset, null);
    // Serialize message field [cup_color_camera]
    bufferOffset = _serializer.int32(obj.cup_color_camera, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mission_cameraResponse
    let len;
    let data = new mission_cameraResponse(null);
    // Deserialize message field [coordinate_camera]
    data.coordinate_camera = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [cup_color_camera]
    data.cup_color_camera = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.coordinate_camera.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mission/mission_cameraResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b944d6e2d2bded5588d47fc18e802eb8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] coordinate_camera
    int32 cup_color_camera
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new mission_cameraResponse(null);
    if (msg.coordinate_camera !== undefined) {
      resolved.coordinate_camera = msg.coordinate_camera;
    }
    else {
      resolved.coordinate_camera = []
    }

    if (msg.cup_color_camera !== undefined) {
      resolved.cup_color_camera = msg.cup_color_camera;
    }
    else {
      resolved.cup_color_camera = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: mission_cameraRequest,
  Response: mission_cameraResponse,
  md5sum() { return '21a18da0693a50b6cde67125054bddd4'; },
  datatype() { return 'mission/mission_camera'; }
};
