#ifndef TestPot_h
#define TestPot_h

class TestPot 
{
  public:
  TestPot(short int);
    long value(void); // read the pot's value

    short setCorrection(short); // set correction to PWM for straight run
    short getCorrection(void); // get the correction of PWM for straight run
    short grads(int);  // convert potentiometer analog value to grads (-100 .. 100 range)

  private:
    long _value; // ange of the potentiometer
    short _pin;
    short _correction=0; // constant correction for the potetiometer
    bool _init=0;
};

#endif
