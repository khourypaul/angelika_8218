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

class TagDetection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.dictionary_name = null;
      this.corners_px = null;
      this.center_px = null;
      this.tag_area_px = null;
      this.detection_score = null;
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
      if (initObj.hasOwnProperty('corners_px')) {
        this.corners_px = initObj.corners_px
      }
      else {
        this.corners_px = [];
      }
      if (initObj.hasOwnProperty('center_px')) {
        this.center_px = initObj.center_px
      }
      else {
        this.center_px = new geometry_msgs.msg.Point32();
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TagDetection
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [dictionary_name]
    bufferOffset = _serializer.string(obj.dictionary_name, buffer, bufferOffset);
    // Serialize message field [corners_px]
    // Serialize the length for message field [corners_px]
    bufferOffset = _serializer.uint32(obj.corners_px.length, buffer, bufferOffset);
    obj.corners_px.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point32.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [center_px]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.center_px, buffer, bufferOffset);
    // Serialize message field [tag_area_px]
    bufferOffset = _serializer.float32(obj.tag_area_px, buffer, bufferOffset);
    // Serialize message field [detection_score]
    bufferOffset = _serializer.float32(obj.detection_score, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TagDetection
    let len;
    let data = new TagDetection(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [dictionary_name]
    data.dictionary_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [corners_px]
    // Deserialize array length for message field [corners_px]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.corners_px = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.corners_px[i] = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [center_px]
    data.center_px = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [tag_area_px]
    data.tag_area_px = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [detection_score]
    data.detection_score = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.dictionary_name);
    length += 12 * object.corners_px.length;
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'assistive_msgs/TagDetection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'be3ec919f3e7b8dc86da70562d16b37e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 id
    string dictionary_name
    geometry_msgs/Point32[] corners_px
    geometry_msgs/Point32 center_px
    float32 tag_area_px
    float32 detection_score
    
    ================================================================================
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TagDetection(null);
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

    if (msg.corners_px !== undefined) {
      resolved.corners_px = new Array(msg.corners_px.length);
      for (let i = 0; i < resolved.corners_px.length; ++i) {
        resolved.corners_px[i] = geometry_msgs.msg.Point32.Resolve(msg.corners_px[i]);
      }
    }
    else {
      resolved.corners_px = []
    }

    if (msg.center_px !== undefined) {
      resolved.center_px = geometry_msgs.msg.Point32.Resolve(msg.center_px)
    }
    else {
      resolved.center_px = new geometry_msgs.msg.Point32()
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

    return resolved;
    }
};

module.exports = TagDetection;
