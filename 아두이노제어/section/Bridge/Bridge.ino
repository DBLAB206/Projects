const int xPin = 2;
const int yPin = 3;
const int zPin = 4;

int minVal = 265;
int maxVal = 402;

double x;
double y;
double z;

int sound_A;
int vib_A;

void setup()
{
  Serial.begin(9600); 
}


void loop()
{
  // 소음 진동 센서
  sound_A = analogRead(A0);
  
  vib_A = analogRead(A1);
  
  Serial.print((String) sound_A+" ");
  Serial.print((String) vib_A+" ");

  int xRead = analogRead(xPin);
  int yRead = analogRead(yPin);
  int zRead = analogRead(zPin);

  // 가속도 센서
  int xAng = map(xRead, minVal, maxVal, -90, 90);
  int yAng = map(yRead, minVal, maxVal, -90, 90);
  int zAng = map(zRead, minVal, maxVal, -90, 90);

  x = RAD_TO_DEG * (atan2(-yAng, -zAng) + PI);
  y = RAD_TO_DEG * (atan2(-xAng, -zAng) + PI);
  z = RAD_TO_DEG * (atan2(-yAng, -xAng) + PI);

  Serial.print(x);
  Serial.print(" ");
  Serial.print(y);
  Serial.print(" ");
  Serial.println(z);

  delay(1000);
}
