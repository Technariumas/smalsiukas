
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

void gasEnable() {
	digitalWrite(GAZ_ENABLE, HIGH);
}

void gasDisable() {
	digitalWrite(GAZ_ENABLE, LOW);
}

typedef enum {
	SPEED1,
	SPEED2,
	SPEED3
} Speed_t;

void setSpeed(Speed_t speed){
	digitalWrite(GAZ_SPEED1, HIGH);
	digitalWrite(GAZ_SPEED2, LOW);
	digitalWrite(GAZ_SPEED3, LOW);
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
	spiBitBang(control);
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

void go() {
	gasDisable();
	directionOff();
	parkingOn();

	keyOn();
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

