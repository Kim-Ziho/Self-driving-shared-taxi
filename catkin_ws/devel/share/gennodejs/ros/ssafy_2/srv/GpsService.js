// Auto-generated. Do not edit!

// (in-package ssafy_2.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GpsServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start_latitude = null;
      this.start_longitude = null;
      this.end_latitude = null;
      this.end_longitude = null;
    }
    else {
      if (initObj.hasOwnProperty('start_latitude')) {
        this.start_latitude = initObj.start_latitude
      }
      else {
        this.start_latitude = 0.0;
      }
      if (initObj.hasOwnProperty('start_longitude')) {
        this.start_longitude = initObj.start_longitude
      }
      else {
        this.start_longitude = 0.0;
      }
      if (initObj.hasOwnProperty('end_latitude')) {
        this.end_latitude = initObj.end_latitude
      }
      else {
        this.end_latitude = 0.0;
      }
      if (initObj.hasOwnProperty('end_longitude')) {
        this.end_longitude = initObj.end_longitude
      }
      else {
        this.end_longitude = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GpsServiceRequest
    // Serialize message field [start_latitude]
    bufferOffset = _serializer.float64(obj.start_latitude, buffer, bufferOffset);
    // Serialize message field [start_longitude]
    bufferOffset = _serializer.float64(obj.start_longitude, buffer, bufferOffset);
    // Serialize message field [end_latitude]
    bufferOffset = _serializer.float64(obj.end_latitude, buffer, bufferOffset);
    // Serialize message field [end_longitude]
    bufferOffset = _serializer.float64(obj.end_longitude, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GpsServiceRequest
    let len;
    let data = new GpsServiceRequest(null);
    // Deserialize message field [start_latitude]
    data.start_latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [start_longitude]
    data.start_longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [end_latitude]
    data.end_latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [end_longitude]
    data.end_longitude = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ssafy_2/GpsServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '822eabc9d50ced1b49be73fe484c8bd1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 start_latitude
    float64 start_longitude
    float64 end_latitude
    float64 end_longitude
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GpsServiceRequest(null);
    if (msg.start_latitude !== undefined) {
      resolved.start_latitude = msg.start_latitude;
    }
    else {
      resolved.start_latitude = 0.0
    }

    if (msg.start_longitude !== undefined) {
      resolved.start_longitude = msg.start_longitude;
    }
    else {
      resolved.start_longitude = 0.0
    }

    if (msg.end_latitude !== undefined) {
      resolved.end_latitude = msg.end_latitude;
    }
    else {
      resolved.end_latitude = 0.0
    }

    if (msg.end_longitude !== undefined) {
      resolved.end_longitude = msg.end_longitude;
    }
    else {
      resolved.end_longitude = 0.0
    }

    return resolved;
    }
};

class GpsServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GpsServiceResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GpsServiceResponse
    let len;
    let data = new GpsServiceResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ssafy_2/GpsServiceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GpsServiceResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: GpsServiceRequest,
  Response: GpsServiceResponse,
  md5sum() { return 'a521110ed02262d566473f15c18bcdf5'; },
  datatype() { return 'ssafy_2/GpsService'; }
};
