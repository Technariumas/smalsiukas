#ifndef __STEERING_H
#define __STEERING_H

#include "pins.h"

#include <AccelStepper.h>

#define MAX_SPEED 3000
#define ACCELERATION 3000

#define WHEEL_MID_POS 600
#define MAX_BACKLASH 5000 

/*
perdavimas 72 prie 22
int(1 / 1.8 * 2 * (72 / 22) * 1024)
*/
#define STEPS_PER_DEGREE 3724


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

uint16_t getWheelPosition() {
	uint32_t sum = 0;
	for(int i=0; i < 16; i++) {
		uint16_t positionAnalog = analogRead(WHEEL_POS_ANALOG);
		sum = sum + positionAnalog;
	}
	return (uint16_t) (sum >> 4);
}

uint16_t getBacklash() {
	// Serial.print("Calibrate from: ");
	// Serial.println(getWheelPosition());

	stepper.setSpeed(1000);
	stepper.setAcceleration(2000);

	stepper.move(-600);
	stepper.runToPosition();
//	delay(500);

	uint16_t positionAnalog = getWheelPosition();
	uint16_t wheelPos = positionAnalog;
		
	stepper.setCurrentPosition(0);
	noFeedback = 0;

	stepper.moveTo(600);

	while(abs((int)wheelPos - (int)positionAnalog) < 10) {
	
		stepper.run();
	
		wheelPos = getWheelPosition();

		// Serial.print(wheelPos);
		// Serial.print(" ");
		// Serial.print(abs((int)wheelPos - (int)positionAnalog));
		// Serial.print(" ");

		// Serial.print(stepper.currentPosition());
		// Serial.println();

		if(stepper.currentPosition() > MAX_BACKLASH) {
			noFeedback = 1;
			return;
		}
	}
	uint16_t b = abs(stepper.currentPosition());
	stepper.runToPosition();
	return b;
}

void calibrate() {
	uint32_t sum = 0;
	for(int i = 0; i < 8; i++) {
		uint16_t b = getBacklash();
		sum = sum + b;
		Serial.print("Backlash "); 
		Serial.println(b);
//		delay(500);
	}
	backlash = sum >> 1;
}

void steeringToCenter() {
	if(getWheelPosition() > WHEEL_MID_POS) {
		stepper.setSpeed(-1000);
	} else {
		stepper.setSpeed(1000);
	}

	while(abs((int)WHEEL_MID_POS - (int)getWheelPosition()) > 2) {
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
	stepper.setPinsInverted(1, 0, 0);
	steeringEnable();

	steeringToCenter();
	calibrate();
	steeringToCenter();

	stepper.setMaxSpeed(MAX_SPEED);
	stepper.setAcceleration(ACCELERATION);
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
	// Serial.print("going to ");
	// Serial.println(positionToGo);

	if(nextPositionScheduled) {
		// Serial.println("next time baby");
		nextPosition = positionToGo;
	} else if(stepper.isRunning()) {
		// Serial.println("stopping...");
		stepper.stop();
		nextPosition = positionToGo;
		nextPositionScheduled = 1;
	} else {
		// Serial.println("going there no questions");
		stepper.moveTo(compensateBacklash(positionToGo));
	}
}

uint8_t steeringIsMoveDone() {
	return !stepper.isRunning() && !nextPositionScheduled;
}

void steeringRun() {
	stepper.run();
	if(!stepper.isRunning() && nextPositionScheduled) {
		// Serial.print("running to next");
		// Serial.println(nextPosition);
		stepper.moveTo(compensateBacklash(nextPosition));
		nextPositionScheduled = 0;
	}
}
#endif