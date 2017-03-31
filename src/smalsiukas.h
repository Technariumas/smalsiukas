#ifndef __SMALSIUKAS_H
#define __SMALSIUKAS_H

#include "control.h"
#include "brake.h"
#include "steering.h"

#define SYNC 1
#define ASYNC 0

#define ERROR_STEERING_DRIVER_FAULT 0
#define ERROR_OBSTACLE 1
#define ERROR_LINE_NOT_PRESENT 2
#define LINE_NOT_RECOGNISED 3
#define ERROR_STEERING 4

uint8_t startupSequence() {
	if(isSteeringDriverFault()) {
		return ERROR_STEERING_DRIVER_FAULT;
	}

	checkForLine(SYNC);
	if(!isLinePresent()){
		return ERROR_LINE_NOT_PRESENT;
	}

	if(!isLineRecognised()) {
		return LINE_NOT_RECOGNISED;
	}

	checkForObstacle(SYNC);
	if(isObstacleInRange()) {
		return ERROR_OBSTACLE;
	}

	controlAllOff();
	controlTakeover();

	steeringInit();
	if(isSteeringFault()) {
		return ERROR_STEERING;
	}
	steeringDisable();

	brakeEmergencyRelease();
	if(isEmergencyBrakeProblem()) {
		return EMERGENCY_BRAKE_PROBLEM;
	}

	//TODO : gražinant klaidą nepalikti smalsiuko tarpinėje būsenoje!!!!

	seatEnable();
	keyOn();
}


void go() {
	gasDisable();
	directionOff();
	parkingOn();

	parkingOff();
	directionForwardOn();
	gasEnable();
	setSpeed(SPEED1);
}

void stop() {
	gasDisable();
	parkingOn();
	directionOff();
}

#endif