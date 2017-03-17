
//use Linde interface
#define LINDE 1

#ifdef LINDE
#include "linde.h"
#include "SteeringPot.h"
#endif

void setup() {
  // put your setup code here, to run once:

  // init steering
  #ifdef LINDE
  SteeringPot steeringWheel(SteeringPin);
  #endif

}

void loop() {
  // put your main code here, to run repeatedly:

}
