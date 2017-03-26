#include "Arduino.h"
#include "ctrl_Toyota.h"






// enable or disable throttle
void CtrlToyota::Throttle(bool state) {
	if (state) {
		digitalWrite(GAZ_ENABLE, HIGH);
	} else {
		digitalWrite(GAZ_ENABLE, LOW);
	}
}

// enable or disable Master Key
void CtrlToyota::MasterKey(bool state) {
	if (state) {
		digitalWrite(KEY_ENABLE, HIGH);
	} else {
		digitalWrite(KEY_ENABLE, LOW);
	}
}


// enable or disable AUX output
void CtrlToyota::Aux(bool state) {
	if (state) {
		control = control | CTRL_AUX;
	} else {
		control = control & ~CTRL_AUX;
	}
	CtrlToyota::sendControl();
}


// enable or disable beacon
void CtrlToyota::Beacon(bool state) {
 	if (state) {
		control = control | CTRL_MIRGALKE;
	} else {
		control = control & ~CTRL_MIRGALKE;
	}
	CtrlToyota::sendControl();
}

// enable or disable lights
void CtrlToyota::Lights(bool state) {
 	if (state) {
		control = control | CTRL_LIGHTS;
	} else {
		control = control & ~CTRL_LIGHTS;
	}
	CtrlToyota::sendControl();
}

// enable or disable horn
void CtrlToyota::Horn(bool state) {
 	if (state) {
		control = control | CTRL_HORN;
	} else {
		control = control & ~CTRL_HORN;
	}
	CtrlToyota::sendControl();
}

// enable or disable parking brake
void CtrlToyota::Parking(bool state) {
 	if (state) {
		control = control | CTRL_PARKING;
	} else {
		control = control & ~CTRL_PARKING;
	}
	CtrlToyota::sendControl();
}


// enable or disable seat sensor
void CtrlToyota::Seat(bool state) {
 	if (state) {
		control = control | CTRL_SEAT;
	} else {
		control = control & ~CTRL_SEAT;
	}
	CtrlToyota::sendControl();
}


void CtrlToyota::Ctrl(unsigned short Ctrl, bool state){
 	if (state) {
		control = control | 1<<Ctrl;
	} else {
		control = control & ~(1<<Ctrl);
	}
	CtrlToyota::sendControl();
}

// set movement direction. Set 0 to stop
void CtrlToyota::Direction(short state) {
	if (state == 0 ) { // STOP state
		control = control & ~CTRL_DIR_FWD;
		control = control & ~CTRL_DIR_BACK;
		_direction= 0;
//		sendControl();
	}
	if (state > 0) { // set direction to forward
		control = control | CTRL_DIR_FWD;
		control = control & ~CTRL_DIR_BACK;
//		sendControl();
	} else { // set direction to backwards
	control = control | CTRL_DIR_BACK;
	control = control & ~CTRL_DIR_FWD;
	}
	CtrlToyota::sendControl();
}

void CtrlToyota::Speed(Speed_t speed){
if (canMove) {
	digitalWrite(GAZ_SPEED1, HIGH);
	digitalWrite(GAZ_SPEED2, LOW);
	digitalWrite(GAZ_SPEED3, LOW);
	}
}
