#include "Arduino.h"
#include "ctrl_Linde.h"


// enable or disable throttle
void CtrlLinde::Throttle(bool state) {
	if (state) {
		digitalWrite(GAZ_ENABLE, HIGH);
	} else {
		digitalWrite(GAZ_ENABLE, LOW);
	}
}

// enable or disable Master Key
void CtrlLinde::MasterKey(bool state) {
	if (state) {
		digitalWrite(KEY_ENABLE, HIGH);
	} else {
		digitalWrite(KEY_ENABLE, LOW);
	}
}


// enable or disable AUX output
void CtrlLinde::Aux(bool state) {
	if (state) {
		control = control | CTRL_AUX;
	} else {
		control = control & ~CTRL_AUX;
	}
	CtrlLinde::sendControl();
}


// enable or disable beacon
void CtrlLinde::Beacon(bool state) {
 	if (state) {
		control = control | CTRL_MIRGALKE;
	} else {
		control = control & ~CTRL_MIRGALKE;
	}
CtrlLinde::sendControl();
}

// enable or disable lights
void CtrlLinde::Lights(bool state) {
 	if (state) {
		control = control | CTRL_LIGHTS;
	} else {
		control = control & ~CTRL_LIGHTS;
	}
CtrlLinde::sendControl();
}

// enable or disable horn
void CtrlLinde::Horn(bool state) {
 	if (state) {
		control = control | CTRL_HORN;
	} else {
		control = control & ~CTRL_HORN;
	}
CtrlLinde::sendControl();
}

//// enable or disable parking brake
//void CtrlLinde::Parking(bool state) {
// 	if (state) {
//		control = control | CTRL_PARKING;
//	} else {
//		control = control & ~CTRL_PARKING;
//	}
//sendControl();
//}


// enable or disable seat sensor
void CtrlLinde::Seat(bool state) {
 	if (state) {
		control = control | CTRL_SEAT;
	} else {
		control = control & ~CTRL_SEAT;
	}
CtrlLinde::sendControl();
}


void CtrlLinde::Ctrl(unsigned short Ctrl, bool state){
 	if (state) {
		control = control | 1<<Ctrl;
	} else {
		control = control & ~(1<<Ctrl);
	}
CtrlLinde::sendControl();
}

// set movement direction. Set 0 to stop
void CtrlLinde::Direction(short state) {
	if (state == 0 ) { // STOP state
		control = control & ~CTRL_DIR_FWD;
		control = control & ~CTRL_DIR_BACK;
		_direction= 0;
//		sendControl();
	}
	if (state > 0) { // set direction to forward
		control = control | CTRL_DIR_FWD;
		control = control & ~CTRL_DIR_BACK;
		_direction= 1;
//		sendControl();
	} else { // set direction to backwards
	control = control | CTRL_DIR_BACK;
	control = control & ~CTRL_DIR_FWD;
	_direction= -1;
	}
	CtrlLinde::sendControl();
}


void CtrlLinde::Speed(Speed_t speed){
if (canMove) {
	if (_direction == 0 ) { // stop
		digitalWrite(GAZ_SPEED2, LOW);
		digitalWrite(GAZ_SPEED1, LOW);
		digitalWrite(GAZ_SPEED3, LOW);
	}
	
	if (speed == SPEED3) {
		speed = SPEED1;
		_direction = -1;
	}
	
	if (speed == SPEED2) {
		_direction = 1;
		digitalWrite(GAZ_SPEED1, LOW);
		digitalWrite(GAZ_SPEED3, LOW);
		digitalWrite(GAZ_SPEED2, HIGH); // forward on speed 2
		}
	if (_direction < 0 ) { // back on speed 1
		digitalWrite(GAZ_SPEED2, LOW);
		digitalWrite(GAZ_SPEED1, LOW);
		digitalWrite(GAZ_SPEED3, HIGH);
	} else {	// forward on speed 1
		digitalWrite(GAZ_SPEED2, LOW);
		digitalWrite(GAZ_SPEED3, LOW);
		digitalWrite(GAZ_SPEED1, HIGH); 
	}
}	
}
