#include "pins.h"
#include "smalsiukas.h"

void initPins() {
	pinMode(UART_ENABLE 				, OUTPUT);
	pinMode(STEERING_FAULT 				, INPUT);
	pinMode(STEERING_DIR 				, OUTPUT);
	pinMode(STEERING_STEP 				, OUTPUT);
	pinMode(STEERING_ENABLE 			, OUTPUT);
	pinMode(LINEAR_ACTUATOR_DIRECTION 	, OUTPUT);
	pinMode(LINEAR_ACTUATOR_ENABLE 		, OUTPUT);
	pinMode(MAGNET_ENGAGE 				, OUTPUT);
	pinMode(SPI_LATCH 					, OUTPUT);
	pinMode(SPI_DATA 					, OUTPUT);
	pinMode(SPI_CLK 					, OUTPUT);
	pinMode(RANGEFINDER_WARNING 		, INPUT);
	pinMode(GAZ_SPEED1 					, OUTPUT);
	pinMode(GAZ_SPEED2 					, OUTPUT);
	pinMode(GAZ_SPEED3 					, OUTPUT);
}

uint8_t getErrorAngle(line) {
	return 0;
}

uint8_t line;

void loop() {

	if(Serial.available()) {
		line = Serial.read();
	}

	error = getErrorAngle(line);


}