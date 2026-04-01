
"use strict";

let TagDetection = require('./TagDetection.js');
let State2D = require('./State2D.js');
let TagDetectionArray = require('./TagDetectionArray.js');
let TagDepthObservation = require('./TagDepthObservation.js');
let TagDepthObservationArray = require('./TagDepthObservationArray.js');
let TagPoseArray = require('./TagPoseArray.js');
let TagPose = require('./TagPose.js');

module.exports = {
  TagDetection: TagDetection,
  State2D: State2D,
  TagDetectionArray: TagDetectionArray,
  TagDepthObservation: TagDepthObservation,
  TagDepthObservationArray: TagDepthObservationArray,
  TagPoseArray: TagPoseArray,
  TagPose: TagPose,
};
