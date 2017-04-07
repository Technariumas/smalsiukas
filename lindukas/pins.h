#ifndef __PINS_H
#define __PINS_H

#define RS458_DE_RD 				2
//#define MAGNET_ENGAGE 				3
//#define STEERING_FAULT 				4
//#define STEERING_DIR 				5
//#define STEERING_STEP 				6
//#define STEERING_ENABLE 			7

#define STEERING_PIN_YELLOW 6
#define STEERING_PIN_GREY 5

#define BUTTON_START      4

//#define LINEAR_ACTUATOR_DIRECTION 	9

#define SERVO_PIN 9
//#define LINEAR_ACTUATOR_ENABLE 		8
#define SPI_LATCH 					10
#define SPI_DATA 					11
//#define RANGEFINDER_WARNING 		12
#define SPI_CLK 					13
#define TAKEOVER 					A0
//#define KEY_ENABLE					A1
//#define GAZ_ENABLE					A2
//#define GAZ_SPEED1 					A3
//#define GAZ_SPEED2 					A4
//#define GAZ_SPEED3 					A5 

//#define HBRIDGE_CURRENT_ANALOG 		A6
//#define WHEEL_POS_ANALOG 			A7

void pinsInit() {
	pinMode(TAKEOVER 					, OUTPUT);
	pinMode(RS458_DE_RD 				, OUTPUT);
	//pinMode(STEERING_FAULT 				, INPUT);
	//pinMode(STEERING_DIR 				, OUTPUT);
	//pinMode(STEERING_STEP 				, OUTPUT);
	//pinMode(STEERING_ENABLE 			, OUTPUT);
	//pinMode(LINEAR_ACTUATOR_DIRECTION 	, OUTPUT);
	//pinMode(LINEAR_ACTUATOR_ENABLE 		, OUTPUT);
	//pinMode(MAGNET_ENGAGE 				, OUTPUT);
	pinMode(SPI_LATCH 					, OUTPUT);
	digitalWrite(SPI_LATCH, LOW);
	pinMode(SPI_DATA 					, OUTPUT);
	pinMode(SPI_CLK 					, OUTPUT);
	
	pinMode(STEERING_PIN_YELLOW  		, OUTPUT);
	pinMode(STEERING_PIN_GREY			, OUTPUT);
	pinMode(SERVO_PIN					, OUTPUT);
	pinMode(BUTTON_START				, OUTPUT);
	
	//pinMode(RANGEFINDER_WARNING 		, INPUT);
	//pinMode(GAZ_SPEED1 					, OUTPUT);
	//pinMode(GAZ_SPEED2 					, OUTPUT);
	//pinMode(GAZ_SPEED3 					, INPUT_PULLUP);
	//pinMode(GAZ_ENABLE 					, OUTPUT);
	//pinMode(KEY_ENABLE 					, OUTPUT);

}


#endif