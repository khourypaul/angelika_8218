// Auto-generated. Do not edit!

// (in-package assistive_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TagDepthObservation = require('./TagDepthObservation.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TagDepthObservationArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.observations = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('observations')) {
        this.observations = initObj.observations
      }
      else {
        this.observations = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TagDepthObservationArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [observations]
    // Serialize the length for message field [observations]
    bufferOffset = _serializer.uint32(obj.observations.length, buffer, bufferOffset);
    obj.observations.forEach((val) => {
      bufferOffset = TagDepthObservation.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TagDepthObservationArray
    let len;
    let data = new TagDepthObservationArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [observations]
    // Deserialize array length for message field [observations]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.observations = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.observations[i] = TagDepthObservation.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 65 * object.observations.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'assistive_msgs/TagDepthObservationArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd36ffe9c694665b938ccaa32e775bddb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    TagDepthObservation[] observations
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: assistive_msgs/TagDepthObservation
    int32 id
    geometry_msgs/Point center_cam
    geometry_msgs/Vector3 normal_cam
    float32 mean_depth_m
    float32 valid_point_ratio
    uint32 support_point_count
    bool plane_fitted
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TagDepthObservationArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.observations !== undefined) {
      resolved.observations = new Array(msg.observations.length);
      for (let i = 0; i < resolved.observations.length; ++i) {
        resolved.observations[i] = TagDepthObservation.Resolve(msg.observations[i]);
      }
    }
    else {
      resolved.observations = []
    }

    return resolved;
    }
};

module.exports = TagDepthObservationArray;
