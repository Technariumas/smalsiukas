#ifndef __STEERING_H
#define __STEERING_H

#include "pins.h"

#include <AccelStepper.h>

#define MAX_SPEED 500
#define ACCELERATION 3000

#define WHEEL_MID_POS 563
#define MAX_BACKLASH 50 

/*
	int(1 / 1.8 * 1024)
*/
#define STEPS_PER_DEGREE 569


uint16_t backlash;
uint8_t noFeedback = 0;
uint16_t nextPosition = 0;
uint8_t nextPositionScheduled = 0;

AccelStepper stepper(AccelStepper::DRIVER, STEERING_STEP, STEERING_DIR);

uint8_t isSteeringDriverFault() {
	return LOW == digitalRead(STEERING_FAULT);
}

uint8_t isNoFeedback() {
	return noFeedback;
}

void calibrate() {
	stepper.move(-50);
	stepper.runToPosition();
	uint16_t positionAnalog = analogRead(WHEEL_POS_ANALOG);
	stepper.setCurrentPosition(0);
	stepper.setSpeed(1);
	noFeedback = 0;
	while(abs(positionAnalog - analogRead(WHEEL_POS_ANALOG)) < 2) {
		stepper.runSpeed();
		if(stepper.currentPosition() > MAX_BACKLASH) {
			noFeedback = 1;
			return;
		}
	}
	backlash = abs(stepper.currentPosition());
	if(analogRead(WHEEL_POS_ANALOG) > WHEEL_MID_POS) {
		stepper.setSpeed(-10);
	} else {
		stepper.setSpeed(10);
	}

	while(abs(WHEEL_MID_POS - analogRead(WHEEL_POS_ANALOG)) < 2) {
		stepper.runSpeed();
	}
	stepper.setCurrentPosition(0);
}

void steeringDisable() {
	stepper.disableOutputs();
}

void steeringEnable() {
	stepper.enableOutputs();
}

void steeringInit() {
	stepper.setEnablePin(STEERING_ENABLE);
	stepper.setMaxSpeed(MAX_SPEED);
	stepper.setAcceleration(ACCELERATION);
	steeringEnable();
	//calibrate();
}


uint8_t isSteeringFault() {
	return isSteeringDriverFault() || isNoFeedback();
}

int16_t angleToPosition(int16_t angle) {
	return ((int32_t)angle * STEPS_PER_DEGREE >> 10) / 10;
}

int16_t compensateBacklash(int16_t positionToGo) {
	if(positionToGo > stepper.currentPosition() && AccelStepper::DIRECTION_CCW == stepper.getDirection()) {
		positionToGo += backlash;
	} else if(positionToGo < stepper.currentPosition() && AccelStepper::DIRECTION_CW == stepper.getDirection()) {
		positionToGo -= backlash;
	}
	return positionToGo;
}

/**
 * angle - degress/10 i.e. 90 degrees = 900
 */
void steeringSetAngle(int16_t angle) {
	int16_t positionToGo = angleToPosition(angle);
	Serial.print("going to ");
	Serial.println(positionToGo);

	if(nextPositionScheduled) {
		Serial.println("next time baby");
		nextPosition = positionToGo;
	} else if(stepper.isRunning()) {
		Serial.println("stopping...");
		stepper.stop();
		nextPosition = positionToGo;
		nextPositionScheduled = 1;
	} else {
		Serial.println("going there no questions");
		stepper.moveTo(compensateBacklash(positionToGo));
	}
}

uint8_t steeringIsMoveDone() {
	return !stepper.isRunning() && !nextPositionScheduled;
}

void steeringRun() {
	stepper.run();
	if(!stepper.isRunning() && nextPositionScheduled) {
		stepper.moveTo(compensateBacklash(nextPosition));
		nextPositionScheduled = 0;
	}
}
#endif