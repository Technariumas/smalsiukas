#ifndef Speed_h
#define Speed_h


#include <Servo.h>


class Speed
{
  protected:
    
    bool _init = 0;
    short _direction; // movement direction: -1==back, 0 == stop, 1 == forward

  public:
    typedef enum State_t {
      SPEED1,
      SPEED2,
      SPEED3
    };
    typedef enum State_t {
      IDLING,
      FWD,
      BACK
    };


    Speed(short); // constructor
    void set(int); // set speed
    void get(bool); // get speed

  private:
    void update(void);
    
    State_t State;
    int _current = 0;
    int _request = 0;
    int _min = 20;
    int _trigLow = 85;
    int _center = 110;
    int _trigHigh = 129;
    int _max = 160;
    bool _speedBtnState = 0;
    
    Servo speedServo;  // create servo object to control a servo



};



#endif
