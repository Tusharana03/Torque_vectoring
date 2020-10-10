##
## StartStop.tcl 
## CarMaker 7.0 ScriptControl Example - IPG Automotive GmbH (www.ipg-automotive.com)
## 
## Load, start and stop test runs
## 
## $Id: StartStop.tcl,v 1.6 2018/04/17 12:36:26 kh Exp $

Log "* Run 15 seconds of Hockenheim"
LoadTestRun "Examples/BasicFunctions/Road/ArtificialRoads/SegmentBasedClosedTrack"
StartSim
WaitForStatus running
WaitForTime 15

StopSim
WaitForStatus idle 10000

Log "* Run 15 seconds of LaneChangeISO"
LoadTestRun "Examples/VehicleDynamics/Handling/LaneChange_ISO"
StartSim
WaitForStatus running
WaitForTime 15

StopSim

