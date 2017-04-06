#include "Arduino.h"
#include "SteeringPot.h"

// constructor
SteeringPot::SteeringPot(short pwmPin, short pwmRevPin) { 
  // init system
    _pin=pwmPin<13?pwmPin:6; //fall back to pin6 if incorrect pin was provided
    _pinRev=pwmRevPin<13?pwmRevPin:5; //fall back to pin5 if incorrect pin was provided
    pinMode(_pin, OUTPUT);
    pinMode(_pinRev, OUTPUT);
    
    _angle=0;
    this->straight();
    _init=1;
  }

// turn steering wheel to the given angle (in grads, -100 to 100)
// return the steering angle set
short SteeringPot::turn(short angle) { 
  _angle=(abs(angle)<100)?angle:_angle;

  // map it to the range of the analog out:
  int outputValue;
  if (abs(angle) < 20){
    outputValue = map(_angle, -200, 200, 0+_correction, 255-_correction) + _correction;
  } else {
    outputValue = map(_angle, -100, 100, 0+_correction, 255-_correction) + _correction;
  }
  
  analogWrite(_pin, outputValue);
  //analogWrite( _pinRev, 255-outputValue);
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
