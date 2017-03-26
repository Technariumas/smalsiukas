#ifndef LineSensor_h
#define LineSensor_h

class LineSensor 
{

  public:
    LineSensor(short int);
    short get(void); // report current reading

  private:
    short _pin; // pin for PWM
    bool _init=0;
};

#endif
