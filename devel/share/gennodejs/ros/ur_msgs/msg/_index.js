
"use strict";

let Analog = require('./Analog.js');
let Digital = require('./Digital.js');
let RobotModeDataMsg = require('./RobotModeDataMsg.js');
let RobotStateRTMsg = require('./RobotStateRTMsg.js');
let MasterboardDataMsg = require('./MasterboardDataMsg.js');
let IOStates = require('./IOStates.js');
let ToolDataMsg = require('./ToolDataMsg.js');

module.exports = {
  Analog: Analog,
  Digital: Digital,
  RobotModeDataMsg: RobotModeDataMsg,
  RobotStateRTMsg: RobotStateRTMsg,
  MasterboardDataMsg: MasterboardDataMsg,
  IOStates: IOStates,
  ToolDataMsg: ToolDataMsg,
};
