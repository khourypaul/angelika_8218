// Auto-generated. Do not edit!

// (in-package assistive_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class TagDepthObservation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.center_cam = null;
      this.normal_cam = null;
      this.mean_depth_m = null;
      this.valid_point_ratio = null;
      this.support_point_count = null;
      this.plane_fitted = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('center_cam')) {
        this.center_cam = initObj.center_cam
      }
      else {
        this.center_cam = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('normal_cam')) {
        this.normal_cam = initObj.normal_cam
      }
      else {
        this.normal_cam = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('mean_depth_m')) {
        this.mean_depth_m = initObj.mean_depth_m
      }
      else {
        this.mean_depth_m = 0.0;
      }
      if (initObj.hasOwnProperty('valid_point_ratio')) {
        this.valid_point_ratio = initObj.valid_point_ratio
      }
      else {
        this.valid_point_ratio = 0.0;
      }
      if (initObj.hasOwnProperty('support_point_count')) {
        this.support_point_count = initObj.support_point_count
      }
      else {
        this.support_point_count = 0;
      }
      if (initObj.hasOwnProperty('plane_fitted')) {
        this.plane_fitted = initObj.plane_fitted
      }
      else {
        this.plane_fitted = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TagDepthObservation
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [center_cam]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.center_cam, buffer, bufferOffset);
    // Serialize message field [normal_cam]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.normal_cam, buffer, bufferOffset);
    // Serialize message field [mean_depth_m]
    bufferOffset = _serializer.float32(obj.mean_depth_m, buffer, bufferOffset);
    // Serialize message field [valid_point_ratio]
    bufferOffset = _serializer.float32(obj.valid_point_ratio, buffer, bufferOffset);
    // Serialize message field [support_point_count]
    bufferOffset = _serializer.uint32(obj.support_point_count, buffer, bufferOffset);
    // Serialize message field [plane_fitted]
    bufferOffset = _serializer.bool(obj.plane_fitted, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TagDepthObservation
    let len;
    let data = new TagDepthObservation(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [center_cam]
    data.center_cam = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [normal_cam]
    data.normal_cam = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [mean_depth_m]
    data.mean_depth_m = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [valid_point_ratio]
    data.valid_point_ratio = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [support_point_count]
    data.support_point_count = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [plane_fitted]
    data.plane_fitted = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 65;
  }

  static datatype() {
    // Returns string type for a message object
    return 'assistive_msgs/TagDepthObservation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4196ac7d305dd54a89c13071539bb080';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new TagDepthObservation(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.center_cam !== undefined) {
      resolved.center_cam = geometry_msgs.msg.Point.Resolve(msg.center_cam)
    }
    else {
      resolved.center_cam = new geometry_msgs.msg.Point()
    }

    if (msg.normal_cam !== undefined) {
      resolved.normal_cam = geometry_msgs.msg.Vector3.Resolve(msg.normal_cam)
    }
    else {
      resolved.normal_cam = new geometry_msgs.msg.Vector3()
    }

    if (msg.mean_depth_m !== undefined) {
      resolved.mean_depth_m = msg.mean_depth_m;
    }
    else {
      resolved.mean_depth_m = 0.0
    }

    if (msg.valid_point_ratio !== undefined) {
      resolved.valid_point_ratio = msg.valid_point_ratio;
    }
    else {
      resolved.valid_point_ratio = 0.0
    }

    if (msg.support_point_count !== undefined) {
      resolved.support_point_count = msg.support_point_count;
    }
    else {
      resolved.support_point_count = 0
    }

    if (msg.plane_fitted !== undefined) {
      resolved.plane_fitted = msg.plane_fitted;
    }
    else {
      resolved.plane_fitted = false
    }

    return resolved;
    }
};

module.exports = TagDepthObservation;
