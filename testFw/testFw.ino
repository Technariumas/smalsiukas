#include "pins.h"
#include "control.h"
#include "brake.h"
#include "line_follower.h"
#include "steering.h"
#include "Bounce2.h"

void testAllOutputs() {
	magnetEngage();
	delay(500);
	magnetDisengage();
	delay(500);
	setSpeed(SPEED1);
	delay(500);
	setSpeed(SPEED0);
	delay(500);
	gasEnable();
	delay(500);
	gasDisable();
	delay(500);
	keyOn();
	delay(500);
	keyOff();
	delay(500);
	auxOn();
	delay(500);
	auxOff();
	delay(500);
	mirgalkeOn();
	delay(500);
	mirgalkeOff();
	delay(500);
	lightsOn();
	delay(500);
	lightsOff();
	delay(500);
	seatEnable();
	delay(500);
	seatDisable();
	delay(500);
	parkingOff();
	delay(500);
	parkingOn();

	delay(500);
	hornOn();
	delay(500);
	hornOff();
	delay(500);
	directionBackwardOn();
	delay(500);
	directionForwardOn();
	delay(500);
	directionOff();


	delay(1000);

	controlTakeover();
	delay(5000);
	controlRelease();
}

void testSpeeds() {
	setSpeed(SPEED1);
	delay(500);
	setSpeed(SPEED0);
	delay(500);
}

uint32_t lastReq = 0;

void serialTestOld() {
	while(Serial.available()) {
		char t = Serial.read();
		if(0!=t) Serial.println((char) t, HEX);
	}
	if(millis() - lastReq > 1) {
		digitalWrite(RS458_DE_RD, HIGH);
		Serial.write('?');
		while(!(UCSR0A & _BV(TXC0))) {
			//WAIT
		}
//		PORTD &= ~_BV(PD2);
		digitalWrite(RS458_DE_RD, LOW);
		lastReq = millis();
	} else {
		// if(UCSR0A & _BV(TXC0)) {
		// 	digitalWrite(RS458_DE_RD, LOW);
		// }
	}
}

void serialTest() {
	if(isTimeToSteer()){
		if(isLineAvailable()) {
			uint8_t l = getLine();
			if(0 != l) {
				Serial.println();
				Serial.println(l);
				delay(100);
			}
		} else if(isRequestTimeout()){
			Serial.print('T');
			delay(100);
		} else if(isChecksumError()){
			Serial.println('!');
			delay(100);
		}
	}
}


//int angle[] ={9000, -9000};
int i = 0;
uint32_t lastMoveTs = 0;

void testHBridge() {
	setDirection(DIRECTION_OUT);
	actuatorEnable();

	lastMoveTs = millis();
	while(millis() - lastMoveTs < 4000) {
		Serial.println(analogRead(HBRIDGE_CURRENT_ANALOG));
	}

	setDirection(DIRECTION_OUT);
	actuatorDisable();

	delay(4000);

	setDirection(DIRECTION_IN);
	actuatorEnable();

	lastMoveTs = millis();
	while(millis() - lastMoveTs < 4000) {
		Serial.println(analogRead(HBRIDGE_CURRENT_ANALOG));
	}

	actuatorDisable();
	delay(4000);

}

Bounce button = Bounce();

uint16_t maxCurrent = 0;

void setup() {
	pinsInit();
	
	button.attach(GAZ_SPEED3);
	button.interval(100);

	controlAllOff();
	Serial.begin(115200);

	keyOn();
	controlTakeover();
	delay(5000);
	hornOn();
	delay(50);
	hornOff();

	// lightsOn();
	// mirgalkeOn();
	// auxOn();
	// delay(1000);
	// auxOff();
	// lightsOff();
	// mirgalkeOff();

	parkingOff();
	directionForwardOn();
	setSpeed(SPEED0);
	gasEnable();
	delay(1000);
	steeringInit();
	delay(5000);

	// steeringDisable();
}

int angle = 900;

int dir = DIRECTION_OUT;



void loop() {

//	Serial.println(getWheelPosition());
	uint16_t curr = analogRead(HBRIDGE_CURRENT_ANALOG);
	Serial.println(curr);
	
	if(curr > maxCurrent) {
		maxCurrent = curr;
	}

	if(button.fell()) {
		// hornOn();
		// delay(50);
		// hornOff();


		if(DIRECTION_OUT == dir) {
			dir = DIRECTION_IN;
			brakeEmergencyRelease();
		} else {
			dir = DIRECTION_OUT;
			magnetDisengage();
		}

	}


	if(steeringIsMoveDone()) {
		angle = angle * -1;
		steeringSetAngle(angle);
		delay(1000);
	}

	// directionForwardOn();
	// delay(1000);
	// setSpeed(SPEED1);
	// parkingOff();
	// gasEnable();
	// delay(15000);
	// setSpeed(SPEED0);
	// delay(15000);
	// directionBackwardOn();
	// setSpeed(SPEED1);
	// delay(15000);
	// setSpeed(SPEED0);
	// parkingOn();
	// delay(15000);

	// gasDisable();
	// delay(2000);

	// parkingOff();
	// delay(1000);
	// parkingOn();

	steeringRun();
	button.update();
}