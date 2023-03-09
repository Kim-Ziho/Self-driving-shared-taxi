
"use strict";

let VehicleSpecIndex = require('./VehicleSpecIndex.js');
let SyncModeInfo = require('./SyncModeInfo.js');
let ObjectStatusList = require('./ObjectStatusList.js');
let ObjectStatus = require('./ObjectStatus.js');
let NpcGhostInfo = require('./NpcGhostInfo.js');
let WaitForTick = require('./WaitForTick.js');
let VehicleSpec = require('./VehicleSpec.js');
let SyncModeCtrlCmd = require('./SyncModeCtrlCmd.js');
let MoraiSimProcHandle = require('./MoraiSimProcHandle.js');
let VehicleCollisionData = require('./VehicleCollisionData.js');
let VehicleCollision = require('./VehicleCollision.js');
let CtrlCmd = require('./CtrlCmd.js');
let SyncModeCmd = require('./SyncModeCmd.js');
let SyncModeCmdResponse = require('./SyncModeCmdResponse.js');
let MoraiTLIndex = require('./MoraiTLIndex.js');
let PRStatus = require('./PRStatus.js');
let MoraiSrvResponse = require('./MoraiSrvResponse.js');
let WaitForTickResponse = require('./WaitForTickResponse.js');
let MoraiTLInfo = require('./MoraiTLInfo.js');
let SyncModeScenarioLoad = require('./SyncModeScenarioLoad.js');
let MoraiSimProcStatus = require('./MoraiSimProcStatus.js');
let ReplayInfo = require('./ReplayInfo.js');
let SetTrafficLight = require('./SetTrafficLight.js');
let Lamps = require('./Lamps.js');
let GPSMessage = require('./GPSMessage.js');
let GetTrafficLightStatus = require('./GetTrafficLightStatus.js');
let IntersectionControl = require('./IntersectionControl.js');
let EgoDdVehicleStatus = require('./EgoDdVehicleStatus.js');
let ERP42Info = require('./ERP42Info.js');
let SyncModeRemoveObject = require('./SyncModeRemoveObject.js');
let GhostMessage = require('./GhostMessage.js');
let EgoVehicleStatus = require('./EgoVehicleStatus.js');
let SyncModeAddObject = require('./SyncModeAddObject.js');
let ScenarioLoad = require('./ScenarioLoad.js');
let TrafficLight = require('./TrafficLight.js');
let MultiEgoSetting = require('./MultiEgoSetting.js');
let CollisionData = require('./CollisionData.js');
let SensorPosControl = require('./SensorPosControl.js');
let RadarDetection = require('./RadarDetection.js');
let SaveSensorData = require('./SaveSensorData.js');
let SyncModeResultResponse = require('./SyncModeResultResponse.js');
let NpcGhostCmd = require('./NpcGhostCmd.js');
let RadarDetections = require('./RadarDetections.js');
let MapSpec = require('./MapSpec.js');
let IntscnTL = require('./IntscnTL.js');
let DdCtrlCmd = require('./DdCtrlCmd.js');
let SyncModeSetGear = require('./SyncModeSetGear.js');
let MapSpecIndex = require('./MapSpecIndex.js');
let IntersectionStatus = require('./IntersectionStatus.js');
let EventInfo = require('./EventInfo.js');
let PREvent = require('./PREvent.js');
let PRCtrlCmd = require('./PRCtrlCmd.js');

module.exports = {
  VehicleSpecIndex: VehicleSpecIndex,
  SyncModeInfo: SyncModeInfo,
  ObjectStatusList: ObjectStatusList,
  ObjectStatus: ObjectStatus,
  NpcGhostInfo: NpcGhostInfo,
  WaitForTick: WaitForTick,
  VehicleSpec: VehicleSpec,
  SyncModeCtrlCmd: SyncModeCtrlCmd,
  MoraiSimProcHandle: MoraiSimProcHandle,
  VehicleCollisionData: VehicleCollisionData,
  VehicleCollision: VehicleCollision,
  CtrlCmd: CtrlCmd,
  SyncModeCmd: SyncModeCmd,
  SyncModeCmdResponse: SyncModeCmdResponse,
  MoraiTLIndex: MoraiTLIndex,
  PRStatus: PRStatus,
  MoraiSrvResponse: MoraiSrvResponse,
  WaitForTickResponse: WaitForTickResponse,
  MoraiTLInfo: MoraiTLInfo,
  SyncModeScenarioLoad: SyncModeScenarioLoad,
  MoraiSimProcStatus: MoraiSimProcStatus,
  ReplayInfo: ReplayInfo,
  SetTrafficLight: SetTrafficLight,
  Lamps: Lamps,
  GPSMessage: GPSMessage,
  GetTrafficLightStatus: GetTrafficLightStatus,
  IntersectionControl: IntersectionControl,
  EgoDdVehicleStatus: EgoDdVehicleStatus,
  ERP42Info: ERP42Info,
  SyncModeRemoveObject: SyncModeRemoveObject,
  GhostMessage: GhostMessage,
  EgoVehicleStatus: EgoVehicleStatus,
  SyncModeAddObject: SyncModeAddObject,
  ScenarioLoad: ScenarioLoad,
  TrafficLight: TrafficLight,
  MultiEgoSetting: MultiEgoSetting,
  CollisionData: CollisionData,
  SensorPosControl: SensorPosControl,
  RadarDetection: RadarDetection,
  SaveSensorData: SaveSensorData,
  SyncModeResultResponse: SyncModeResultResponse,
  NpcGhostCmd: NpcGhostCmd,
  RadarDetections: RadarDetections,
  MapSpec: MapSpec,
  IntscnTL: IntscnTL,
  DdCtrlCmd: DdCtrlCmd,
  SyncModeSetGear: SyncModeSetGear,
  MapSpecIndex: MapSpecIndex,
  IntersectionStatus: IntersectionStatus,
  EventInfo: EventInfo,
  PREvent: PREvent,
  PRCtrlCmd: PRCtrlCmd,
};
