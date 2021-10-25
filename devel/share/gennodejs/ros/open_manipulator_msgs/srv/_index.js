
"use strict";

let GetKinematicsPose = require('./GetKinematicsPose.js')
let SetJointPosition = require('./SetJointPosition.js')
let GetJointPosition = require('./GetJointPosition.js')
let SetActuatorState = require('./SetActuatorState.js')
let SetDrawingTrajectory = require('./SetDrawingTrajectory.js')
let SetKinematicsPose = require('./SetKinematicsPose.js')

module.exports = {
  GetKinematicsPose: GetKinematicsPose,
  SetJointPosition: SetJointPosition,
  GetJointPosition: GetJointPosition,
  SetActuatorState: SetActuatorState,
  SetDrawingTrajectory: SetDrawingTrajectory,
  SetKinematicsPose: SetKinematicsPose,
};
