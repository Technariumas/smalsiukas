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
  
  void Speed(Speed_t); // set movement speed
  
  void setDirection(short); // set movement direction. Set 0 to stop
  short getDirection(void); // get movement direction
  
  // I/O operations
  void Aux(bool); // enable / disable AUX output
  void Beacon(bool); // enable / disable beacon
  void Lights(bool); // enable / disable lights
  void Horn(bool); // enable / disable horn
  void Parking(bool); // enable / disable parking brake
  void Seat(bool); // enable / disable seat

   void Ctrl(unsigned short, bool); // enable / disable control bits

   //void Move(bool); // enable the forklift for moving operations

  // state functions
  bool isReady(void);
  bool isMoving(void);
  bool isLineCentered(void);
  bool isLineLeft(void);
  bool isPerimeterFault(void);

  void setReady(bool);
  void setMoving(bool);
  void setLineCentered(bool);
  void setLineLeft(bool);
  void setPerimeterFault(bool);
  

	private:
   unsigned char carState=0x0;
 /*  
  *     MSB                                        LSB
  *    +-----+-----+-----+-----+-----+-----+-----+-----+
  *    |  RS |  RS | RS  |  PF |  LP | LC  |  MV | RDY |
  *    +-----+-----+-----+-----+-----+-----+-----+-----+
  *    
  *    RS: reserved
  *    PF: Perimeter fault
  *    LP: Line Position : left (1) or right(0). Ignore if LC is set
  *    LC: Line centered
  *    MV: moving
  *    RDY: ready to move
*/

  
};

#endif
