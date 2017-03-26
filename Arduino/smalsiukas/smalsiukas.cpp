#include "Arduino.h"
#include "Smalsiukas.h"

// constructor
Smalsiukas::Smalsiukas(void) { 
  // init system
  
  pinMode(THROTTLE_PIN1, OUTPUT);
  pinMode(THROTTLE_PIN2, OUTPUT);
  pinMode(THROTTLE_PIN3, OUTPUT);
  
// #define UART_ENABLE 				2

//#define MAGNET_ENGAGE 				3
 pinMode(MAGNET_ENGAGE, OUTPUT);

//#define STEERING_FAULT 				4
  pinMode(STEERING_FAULT, INPUT);
  
//#define STEERING_DIR 				5
  pinMode(STEERING_DIR, OUTPUT);
  
//#define STEERING_STEP 				6
  pinMode(STEERING_STEP, OUTPUT);
  
//#define STEERING_ENABLE 			7
 pinMode(STEERING_DIR, OUTPUT);
 
//#define LINEAR_ACTUATOR_DIRECTION 	8
  pinMode(LINEAR_ACTUATOR_DIRECTION, OUTPUT);
  
//#define LINEAR_ACTUATOR_ENABLE 		9
  pinMode(LINEAR_ACTUATOR_ENABLE, OUTPUT);
  
// #define SPI_LATCH 					10
  pinMode(SPI_LATCH, OUTPUT);
  
//#define SPI_DATA 					11
  pinMode(SPI_DATA, OUTPUT);
  
// #define RANGEFINDER_WARNING 		12
  pinMode(RANGEFINDER_WARNING, INPUT);
  
//#define SPI_CLK 					13
  pinMode(SPI_CLK, OUTPUT);
  
//#define TAKEOVER 					A0
  pinMode(TAKEOVER, OUTPUT);
  
//#define KEY_ENABLE					A1
  pinMode(KEY_ENABLE, OUTPUT);
  
//#define GAZ_ENABLE					A2
  pinMode(GAZ_ENABLE, OUTPUT);
  
//#define GAZ_SPEED1 					A3
  pinMode(GAZ_SPEED1, OUTPUT);
  
//#define GAZ_SPEED2 					A4
  pinMode(GAZ_SPEED2, OUTPUT);
  
//#define GAZ_SPEED3 					A5 
  pinMode(GAZ_SPEED3, OUTPUT);
  
//#define HBRIDGE_CURRENT_ANALOG 		A6
  pinMode(HBRIDGE_CURRENT_ANALOG, INPUT);

//#define WHEEL_POS_ANALOG 			A7
  pinMode(WHEEL_POS_ANALOG, INPUT);

    _init=1;
  }


 // PATCH function
void spiBitBang(unsigned char ctl) {
  return 1;
  }

  void Smalsiukas::sendControl(void) {
  Smalsiukas::spiBitBang(control);
}
