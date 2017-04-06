
#define TAKEOVER A0
#define PILKAS 6
#define GELTONAS 5


//pilkas geltonas
uint8_t center[] = {113, 138};

void setup() {
  pinMode(TAKEOVER, OUTPUT);
  pinMode(PILKAS, OUTPUT);
  pinMode(GELTONAS, OUTPUT);

  analogWrite(PILKAS, center[0]);
  analogWrite(GELTONAS, center[1]);

  delay(1000);

  digitalWrite(TAKEOVER, HIGH);

  delay(6000);
  

//  delay(2000);
//
//  analogWrite(PILKAS, 123);
//  analogWrite(GELTONAS, 148);

//  delay(500);

}

void loop() {
  center[0]++;
  center[1]++;
  

  analogWrite(PILKAS, center[0]);
  analogWrite(GELTONAS, center[1]);

  delay(10);
}
