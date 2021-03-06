#ifndef __SMALSIUKAS_H
#define __SMALSIUKAS_H

#include "control.h"
#include "brake.h"
#include "steering.h"
#include "line_follower.h"

#define SYNC 1
#define ASYNC 0

#define LINE_SEEN_TIMEOUT 1000

typedef enum{
	STATE_STOP,
	STATE_FOLLOWING,
	STATE_ERROR
} SmalsiukasState_t;

SmalsiukasState_t smalsiukasState = STATE_STOP;
uint8_t lastLine = 0;

void beep() {
	hornOn();
	delay(10);
	hornOff();
}

void beeep() {
	hornOn();
	delay(500);
	hornOff();
}

void hydraulicsOn() {
	setSpeed(SPEED0);
	directionBackwardOn();
	parkingOn();
	gasEnable();
	delay(1000);
}

void takeoverWhileOn() {
	controlAllOff();
	keyOn();
	controlTakeover();
	hydraulicsOn();
	steeringEnable();
	steeringToCenter();
	mirgalkeOn();
	beep();
}

void stop() {
	gasDisable();
	parkingOn();
	directionOff();
	setSpeed(SPEED0);
	steeringDisable();
	controlRelease();
}

uint8_t firstSteering = 0;

void go() {
	takeoverWhileOn();
	setSpeed(SPEED0);
	directionForwardOn();
	gasEnable();
	delay(500);
	parkingOff();
	firstSteering = 1;
}


void hydraulicsOff() {
	gasDisable();	
	directionOff();
}



#endif