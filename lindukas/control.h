#ifndef __CONTROL_H
#define __CONTROL_H

#include "pins.h"
#include "gaz.h"

void controlTakeover() {
	digitalWrite(TAKEOVER, HIGH);
}

void controlRelease() {
	digitalWrite(TAKEOVER, LOW);
}

void keyOn() {
	digitalWrite(KEY_ENABLE, HIGH);
}

void keyOff() {
	digitalWrite(KEY_ENABLE, LOW);
}



uint8_t control = 0;

#define CTRL_SEAT 		0b00000001
#define CTRL_PARKING	0b00000010
#define CTRL_HORN		0b00000100
#define CTRL_DIR_BACK	0b00001000
#define CTRL_DIR_FWD	0b00010000
#define CTRL_AUX		0b00100000
#define CTRL_MIRGALKE	0b01000000
#define CTRL_LIGHTS		0b10000000

void sendControl() {
	digitalWrite(SPI_LATCH, LOW);
 	shiftOut(SPI_DATA, SPI_CLK, MSBFIRST, control);  
	digitalWrite(SPI_LATCH, HIGH);
}

void seatEnable() {
	control = control | CTRL_SEAT;
	sendControl();
}

void seatDisable() {
	control = control & ~CTRL_SEAT;
	sendControl();
}

void parkingOn() {
	control = control & ~CTRL_PARKING;
	sendControl();
}

void parkingOff() {
	control = control | CTRL_PARKING;
	sendControl();
}

void hornOn() {
	control = control | CTRL_HORN;
	sendControl();
}

void hornOff() {
	control = control & ~CTRL_HORN;
	sendControl();
}

void directionForwardOn() {
	control = control | CTRL_DIR_FWD;
	control = control & ~CTRL_DIR_BACK;
	sendControl();
}

void directionBackwardOn() {
	control = control | CTRL_DIR_BACK;
	control = control & ~CTRL_DIR_FWD;
	sendControl();
}

void directionOff() {
	control = control & ~CTRL_DIR_FWD;
	control = control & ~CTRL_DIR_BACK;
	sendControl();
}

void lightsOn() {
	control = control | CTRL_LIGHTS;
	sendControl();
}

void lightsOff() {
	control = control & ~CTRL_LIGHTS;
	sendControl();
}

void mirgalkeOn() {
	control = control | CTRL_MIRGALKE;
	sendControl();
}

void mirgalkeOff() {
	control = control & ~CTRL_MIRGALKE;
	sendControl();
}

void auxOn() {
	control = control | CTRL_AUX;
	sendControl();
}

void auxOff() {
	control = control & ~CTRL_AUX;
	sendControl();
}

void controlAllOff() {
	parkingOn();

	auxOff();
	mirgalkeOff();
	hornOff();
	lightsOff();
	directionOff();
	seatDisable();

	gasDisable();
	setSpeed(SPEED0);
	keyOff();
}

#endif