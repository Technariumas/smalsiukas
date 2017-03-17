#include "Arduino.h"
#include "SteeringPot.h"

// constructor
short SteeringPot::SteeringPot(short pwmPin) { 
  // init system
    _pin=pwmPin<13?pwmPin:6; //fall back to pin6 if incerrect pin was provided
    pinMode(_pin, OUTPUT);
    
    _angle=0;
    this.straight();
    _init=1;
    return _init;
  }

// turn steering wheel to the given angle (in grads, -100 to 100)
// return the steering angle set
short SteeringPot::turn(short angle) { 
  _angle=(abs(angle)<100)?angle:_angle;

  // map it to the range of the analog out:
  int outputValue = map(_angle, -100, 100, 0+_correction, 255-_correction) + _correction;
  analogWrite(_pin, outputValue);
  return _angle;
}

// run straight, equals to turn(0)
short SteeringPot::straight(void){ 
  turn(_angle=0);
  return _angle;
}

// report current wheel angle set
short SteeringPot::getAngle(void){ 
  return _angle;
}

// set correction to PWM for straight run
short SteeringPot::setCorrection(short constant){ 
  _correction=constant<10?constant:_correction;
  return _correction;
}

// report the correction of PWM for straight run
short SteeringPot::getCorrection(void){ 
  return _correction;
}
