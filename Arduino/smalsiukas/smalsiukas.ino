
   
//use Linde interface
#define LINDE 1

// use TOYOTA interface
//#define TOYOTA 1


#ifdef LINDE
#include "linde.h"
#include "SteeringPot.h"
#include "ctrl_Linde.h"
#endif


#ifdef TOYOTA
#include "toyota.h"
#include "ctrl_Toyota.h"
#endif

#include "LineSensor.h"

 // init steering and car
  #ifdef LINDE
  SteeringPot steeringWheel(SteeringPin);
  CtrlLinde Car;
  #endif

  #ifdef TOYOTA
  CtrlToyota Car;
  #endif

// set up line follower interface
 LineSensor line_sensing(10);


 // AUX functions
 
// prepare / stop forklift for movement operations
void Move(bool state) {
  Car.Throttle(0);
  Car.Direction(0);
  #ifdef TOYOTA
  Car.Parking(1);
  #endif
  Car.Beacon(0);
  //Car::MasterKey(0);
  

if (state) {
  Car.MasterKey(1);
  #ifdef TOYOTA
  Car.Parking(0);
  #endif
  Car.Beacon(1);
  Car.Direction(1);
  Car.Throttle(1);
  Car.Speed(0);
  }
}



 
void setup() {
  // put your setup code here, to run once:

  // set up car
  Car.Beacon(1);
  Car.Lights(1);
  for (short i=0; i<3;i++){
    Car.Horn(1);
    delay(150);
    Car.Horn(0);
  }
  //Car.Seat(1);
}

void loop() {
  // put your main code here, to run repeatedly:
  if (Car.canMove){
    Car.Throttle(1);
    Car.Speed(0);
    Car.Beacon(1);
  } else {
    Car.Throttle(0);
    }

    if (line_sensing.get() == 255){ // all sensors catching a line
    #ifdef TOYOTA
      Car.Move(0);
      #endif
      
      #ifdef LINDE
      Car.Throttle(0);  // must reverse at the end of line
      int cAngle = steeringWheel.getAngle(); //preserve the current angle
      short cDirection = Car.getDirection();
      Car.Direction(~cDirection); //reverse direction, preserve angle
      Car.Throttle(1); // enable throttle
      Car.Speed(0); // run back at speed 1
      delay(20); // run for overshoot
      if (line_sensing.get() == 255) {
        Car.canMove=0;
        Car.Move(0);
        }
      #endif
    
      }
}

