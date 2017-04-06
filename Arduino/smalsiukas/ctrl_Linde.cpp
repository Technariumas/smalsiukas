#include "Arduino.h"
#include "ctrl_Linde.h"


// enable or disable throttle
void CtrlLinde::Controll(bool state) {
  if (state) {
    digitalWrite(TAKEOVER, HIGH);
  } else {
    digitalWrite(TAKEOVER, LOW);
  }
}

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
void CtrlLinde::setDirection(short state) {
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


void CtrlLinde::Speed(uint8_t speed){
if (CtrlLinde::isReady()) {
	if (_direction == 0 ) { // stop
		digitalWrite(GAZ_SPEED2, LOW);
		digitalWrite(GAZ_SPEED1, LOW);
    CtrlLinde::Throttle(0); //disable the throttle button
    CtrlLinde::setMoving(0); // car is stopped
	}
	
	if (_direction < 0 ) { // back on speed 1
    CtrlLinde::Throttle(1); // enable the throttle button
		digitalWrite(GAZ_SPEED1, LOW);
		digitalWrite(GAZ_SPEED2, HIGH);
   CtrlLinde::setMoving(1); // car is moving
	} else {	// forward on speed 1
		CtrlLinde::Throttle(1); // enable the throttle button
		digitalWrite(GAZ_SPEED2, LOW);
		digitalWrite(GAZ_SPEED1, HIGH); 
    CtrlLinde::setMoving(1); // car is moving
	}
 }	
}

  void CtrlLinde::reverseDirection(void) { // reverse car's direction
    _direction = 0-_direction;
    };
// state functions
  short CtrlLinde::getDirection(void) { // get car's direction
    return _direction;
    };
  
  bool CtrlLinde::isReady(void) { // car is ready for movements
    return (carState & 0x01);
    };
    
  bool CtrlLinde::isMoving(void) { // car is moving
    return (carState & 0x02);
    };
  
  bool CtrlLinde::isLineCentered(void) { // line is centered
    return (carState & 0x04);
    };
    
  bool CtrlLinde::isLineLeft(void){ // line is on the left
    return (carState & 0x08);
    };
  bool CtrlLinde::isPerimeterFault(void){
    return (carState && 0x10);
    };

  void CtrlLinde::setReady(bool state) { // set car ready for movements
    if (state){
     carState |= 0x01;
    } else {
     carState &= ~0x01;
    }
  }
    
  void CtrlLinde::setMoving(bool state) { // set car moving
    if (state){
     carState |= 0x02;
    } else {
     carState &= ~0x02;
    }
  }
    
  void CtrlLinde::setLineCentered(bool state) { // set line is centered
    if (state){
     carState |= 0x04;
    } else {
     carState &= ~0x04;
    }
    }
    
  void CtrlLinde::setLineLeft(bool state) { // set line is left of  the car
    if (state){
     carState |= 0x08;
     carState &= ~0x04; // line is not centered
    } else {
     carState &= ~0x08;
     carState &= ~0x04; // line is not centered
    }
  }
    
  void CtrlLinde::setPerimeterFault(bool state) { // set perimeter fault
    if (state){
     carState |= 0x10; // set flag
     carState &= ~0x01; // not ready to move
     carState &= ~0x02; // unset MOVING flag
    } else {
     carState &= ~0x10; 
    }
  }
