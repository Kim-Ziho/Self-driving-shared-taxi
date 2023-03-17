// Auto-generated. Do not edit!

// (in-package ssafy_2.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class mvp {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.longitudei = null;
      this.latitudei = null;
      this.longitudeg = null;
      this.latitudeg = null;
    }
    else {
      if (initObj.hasOwnProperty('longitudei')) {
        this.longitudei = initObj.longitudei
      }
      else {
        this.longitudei = 0.0;
      }
      if (initObj.hasOwnProperty('latitudei')) {
        this.latitudei = initObj.latitudei
      }
      else {
        this.latitudei = 0.0;
      }
      if (initObj.hasOwnProperty('longitudeg')) {
        this.longitudeg = initObj.longitudeg
      }
      else {
        this.longitudeg = 0.0;
      }
      if (initObj.hasOwnProperty('latitudeg')) {
        this.latitudeg = initObj.latitudeg
      }
      else {
        this.latitudeg = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mvp
    // Serialize message field [longitudei]
    bufferOffset = _serializer.float64(obj.longitudei, buffer, bufferOffset);
    // Serialize message field [latitudei]
    bufferOffset = _serializer.float64(obj.latitudei, buffer, bufferOffset);
    // Serialize message field [longitudeg]
    bufferOffset = _serializer.float64(obj.longitudeg, buffer, bufferOffset);
    // Serialize message field [latitudeg]
    bufferOffset = _serializer.float64(obj.latitudeg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mvp
    let len;
    let data = new mvp(null);
    // Deserialize message field [longitudei]
    data.longitudei = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [latitudei]
    data.latitudei = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [longitudeg]
    data.longitudeg = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [latitudeg]
    data.latitudeg = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ssafy_2/mvp';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'be83d3a65597cc0a4c5a9ccca46da4e1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 longitudei
    float64 latitudei
    float64 longitudeg
    float64 latitudeg
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new mvp(null);
    if (msg.longitudei !== undefined) {
      resolved.longitudei = msg.longitudei;
    }
    else {
      resolved.longitudei = 0.0
    }

    if (msg.latitudei !== undefined) {
      resolved.latitudei = msg.latitudei;
    }
    else {
      resolved.latitudei = 0.0
    }

    if (msg.longitudeg !== undefined) {
      resolved.longitudeg = msg.longitudeg;
    }
    else {
      resolved.longitudeg = 0.0
    }

    if (msg.latitudeg !== undefined) {
      resolved.latitudeg = msg.latitudeg;
    }
    else {
      resolved.latitudeg = 0.0
    }

    return resolved;
    }
};

module.exports = mvp;
