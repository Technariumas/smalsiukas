#ifndef crtl_LINDE_h
#define crtl_LINDE_h

#include "smalsiukas.h"

class CtrlLinde : public Smalsiukas
{
 public:

    typedef enum Speed_t {
      SPEED1,
      SPEED2,
      SPEED3
      };
  void Throttle(bool); // control throttle 
  void MasterKey(bool); // master key controll
  void Controll(bool); // set /release controll to Arduino board
  void Direction(short); // set movement direction. Set 0 to stop
  void Speed(Speed_t); // set movement speed
  short getDirection(void); // get movement direction
  
  // I/O operations
  void Aux(bool); // enable / disable AUX output
  void Beacon(bool); // enable / disable beacon
  void Lights(bool); // enable / disable lights
  void Horn(bool); // enable / disable horn
  void Parking(bool); // enable / disable parking brake
  void Seat(bool); // enable / disable seat

   void Ctrl(unsigned short, bool); // enable / disable control bits

   void Move(bool); // enable the forklift for moving operations
  

	

  
};

#endif
