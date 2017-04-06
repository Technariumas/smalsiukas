#ifndef SteeringPot_h
#define SteeringPot_h

class SteeringPot 
{

  public:
    SteeringPot(short, short);
    short turn(short); // turn steering wheel to the given angle (in grads, -100 to 100)
    short straight(void); // run straight, equals to turn(0)
    short getAngle(void); // report current angle

    short setCorrection(short); // set correction to PWM for straight run
    short getCorrection(void); // get the correction of PWM for straight run

  private:
    short _correction = 0; // constant correction for the wheel to run straight
    short _angle; // ange of the wheel, in grads (-100 to 100)
    short _pin; // pin for PWM
    short _pinRev; // pin for reversed PWM 
    bool _init=0;
};

#endif
