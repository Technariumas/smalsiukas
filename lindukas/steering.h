#ifndef __STEERING_H
#define __STEERING_H

#include "pins.h"

#define MAX_SPEED 3000
#define ACCELERATION 7000

#define WHEEL_MID_POS 600
#define MAX_BACKLASH 5000 

/*
perdavimas 72 prie 22
int(1 / 1.8 * 2 * (72 / 22) * 1024)
*/
#define STEPS_PER_DEGREE 3724


uint16_t backlash = 175;
uint8_t noFeedback = 0;
uint16_t nextPosition = 0;
uint8_t nextPositionScheduled = 0;


// uint8_t isSteeringDriverFault() {
// 	return LOW == digitalRead(STEERING_FAULT);
// }

// uint8_t isNoFeedback() {
// 	return noFeedback;
// }

// uint16_t getWheelPosition() {
// 	uint32_t sum = 0;
// 	for(int i=0; i < 16; i++) {
// 		uint16_t positionAnalog = analogRead(WHEEL_POS_ANALOG);
// 		sum = sum + positionAnalog;
// 	}
// 	return (uint16_t) (sum >> 4);
// }

// uint16_t getBacklash() {
// 	// Serial.print("Calibrate from: ");
// 	// Serial.println(getWheelPosition());

// 	stepper.setSpeed(1000);
// 	stepper.setAcceleration(2000);

// 	stepper.move(-600);
// 	stepper.runToPosition();
// //	delay(500);

// 	uint16_t positionAnalog = getWheelPosition();
// 	uint16_t wheelPos = positionAnalog;
		
// 	stepper.setCurrentPosition(0);
// 	noFeedback = 0;

// 	stepper.moveTo(600);

// 	while(abs((int)wheelPos - (int)positionAnalog) < 10) {
	
// 		stepper.run();
	
// 		wheelPos = getWheelPosition();

// 		// Serial.print(wheelPos);
// 		// Serial.print(" ");
// 		// Serial.print(abs((int)wheelPos - (int)positionAnalog));
// 		// Serial.print(" ");

// 		// Serial.print(stepper.currentPosition());
// 		// Serial.println();

// 		if(stepper.currentPosition() > MAX_BACKLASH) {
// 			noFeedback = 1;
// 			return;
// 		}
// 	}
// 	uint16_t b = abs(stepper.currentPosition());
// 	stepper.runToPosition();
// 	return b;
// }


void steeringToCenter() {
}

void steeringDisable() {
}

void steeringEnable() {
}

void steeringInit() {
}


/**
 * angle - degress/10 i.e. 90 degrees = 900
 */

void steeringSetAngle(int16_t angle) {
}

uint8_t steeringIsMoveDone() {
}

void steeringRun() {
}

void steeringRunToPosition() {
}
#endif