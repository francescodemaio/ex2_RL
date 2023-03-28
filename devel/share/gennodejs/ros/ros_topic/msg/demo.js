// Auto-generated. Do not edit!

// (in-package ros_topic.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class demo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.valore = null;
      this.periodo = null;
      this.ampiezza = null;
    }
    else {
      if (initObj.hasOwnProperty('valore')) {
        this.valore = initObj.valore
      }
      else {
        this.valore = 0.0;
      }
      if (initObj.hasOwnProperty('periodo')) {
        this.periodo = initObj.periodo
      }
      else {
        this.periodo = 0.0;
      }
      if (initObj.hasOwnProperty('ampiezza')) {
        this.ampiezza = initObj.ampiezza
      }
      else {
        this.ampiezza = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type demo
    // Serialize message field [valore]
    bufferOffset = _serializer.float64(obj.valore, buffer, bufferOffset);
    // Serialize message field [periodo]
    bufferOffset = _serializer.float64(obj.periodo, buffer, bufferOffset);
    // Serialize message field [ampiezza]
    bufferOffset = _serializer.float64(obj.ampiezza, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type demo
    let len;
    let data = new demo(null);
    // Deserialize message field [valore]
    data.valore = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [periodo]
    data.periodo = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ampiezza]
    data.ampiezza = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_topic/demo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '090b6990903cf4047b51d53a5fb1176e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 valore
    float64 periodo
    float64 ampiezza
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new demo(null);
    if (msg.valore !== undefined) {
      resolved.valore = msg.valore;
    }
    else {
      resolved.valore = 0.0
    }

    if (msg.periodo !== undefined) {
      resolved.periodo = msg.periodo;
    }
    else {
      resolved.periodo = 0.0
    }

    if (msg.ampiezza !== undefined) {
      resolved.ampiezza = msg.ampiezza;
    }
    else {
      resolved.ampiezza = 0.0
    }

    return resolved;
    }
};

module.exports = demo;
