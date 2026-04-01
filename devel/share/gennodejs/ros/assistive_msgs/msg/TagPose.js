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

class TagPose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.dictionary_name = null;
      this.pose = null;
      this.normal = null;
      this.observed = null;
      this.tag_area_px = null;
      this.detection_score = null;
      this.reprojection_error_px = null;
      this.depth_fused = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('dictionary_name')) {
        this.dictionary_name = initObj.dictionary_name
      }
      else {
        this.dictionary_name = '';
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.PoseWithCovariance();
      }
      if (initObj.hasOwnProperty('normal')) {
        this.normal = initObj.normal
      }
      else {
        this.normal = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('observed')) {
        this.observed = initObj.observed
      }
      else {
        this.observed = false;
      }
      if (initObj.hasOwnProperty('tag_area_px')) {
        this.tag_area_px = initObj.tag_area_px
      }
      else {
        this.tag_area_px = 0.0;
      }
      if (initObj.hasOwnProperty('detection_score')) {
        this.detection_score = initObj.detection_score
      }
      else {
        this.detection_score = 0.0;
      }
      if (initObj.hasOwnProperty('reprojection_error_px')) {
        this.reprojection_error_px = initObj.reprojection_error_px
      }
      else {
        this.reprojection_error_px = 0.0;
      }
      if (initObj.hasOwnProperty('depth_fused')) {
        this.depth_fused = initObj.depth_fused
      }
      else {
        this.depth_fused = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TagPose
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [dictionary_name]
    bufferOffset = _serializer.string(obj.dictionary_name, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.PoseWithCovariance.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [normal]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.normal, buffer, bufferOffset);
    // Serialize message field [observed]
    bufferOffset = _serializer.bool(obj.observed, buffer, bufferOffset);
    // Serialize message field [tag_area_px]
    bufferOffset = _serializer.float32(obj.tag_area_px, buffer, bufferOffset);
    // Serialize message field [detection_score]
    bufferOffset = _serializer.float32(obj.detection_score, buffer, bufferOffset);
    // Serialize message field [reprojection_error_px]
    bufferOffset = _serializer.float32(obj.reprojection_error_px, buffer, bufferOffset);
    // Serialize message field [depth_fused]
    bufferOffset = _serializer.bool(obj.depth_fused, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TagPose
    let len;
    let data = new TagPose(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [dictionary_name]
    data.dictionary_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.PoseWithCovariance.deserialize(buffer, bufferOffset);
    // Deserialize message field [normal]
    data.normal = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [observed]
    data.observed = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [tag_area_px]
    data.tag_area_px = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [detection_score]
    data.detection_score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reprojection_error_px]
    data.reprojection_error_px = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [depth_fused]
    data.depth_fused = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.dictionary_name);
    return length + 390;
  }

  static datatype() {
    // Returns string type for a message object
    return 'assistive_msgs/TagPose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0f26474302ad493af59fa06f6d81f35b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 id
    string dictionary_name
    geometry_msgs/PoseWithCovariance pose
    geometry_msgs/Vector3 normal
    bool observed
    float32 tag_area_px
    float32 detection_score
    float32 reprojection_error_px
    bool depth_fused
    
    ================================================================================
    MSG: geometry_msgs/PoseWithCovariance
    # This represents a pose in free space with uncertainty.
    
    Pose pose
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
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
    const resolved = new TagPose(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.dictionary_name !== undefined) {
      resolved.dictionary_name = msg.dictionary_name;
    }
    else {
      resolved.dictionary_name = ''
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.PoseWithCovariance.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.PoseWithCovariance()
    }

    if (msg.normal !== undefined) {
      resolved.normal = geometry_msgs.msg.Vector3.Resolve(msg.normal)
    }
    else {
      resolved.normal = new geometry_msgs.msg.Vector3()
    }

    if (msg.observed !== undefined) {
      resolved.observed = msg.observed;
    }
    else {
      resolved.observed = false
    }

    if (msg.tag_area_px !== undefined) {
      resolved.tag_area_px = msg.tag_area_px;
    }
    else {
      resolved.tag_area_px = 0.0
    }

    if (msg.detection_score !== undefined) {
      resolved.detection_score = msg.detection_score;
    }
    else {
      resolved.detection_score = 0.0
    }

    if (msg.reprojection_error_px !== undefined) {
      resolved.reprojection_error_px = msg.reprojection_error_px;
    }
    else {
      resolved.reprojection_error_px = 0.0
    }

    if (msg.depth_fused !== undefined) {
      resolved.depth_fused = msg.depth_fused;
    }
    else {
      resolved.depth_fused = false
    }

    return resolved;
    }
};

module.exports = TagPose;
