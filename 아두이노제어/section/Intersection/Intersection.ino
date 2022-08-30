#define TRIG 9 //TRIG 핀 설정 (초음파 보내는 핀)
#define ECHO 8 //ECHO 핀 설정 (초음파 받는 핀)

int sound_A;
int sound_B;
int sound_C;

int vib_A;
int vib_B;
int vib_C;

void setup()
{
  Serial.begin(115200);
  pinMode(TRIG, OUTPUT);
  pinMode(ECHO, INPUT);
}

void loop()
{
  // 소음 진동 센서
  sound_A = analogRead(A0);
  sound_B = analogRead(A1);
  sound_C = analogRead(A2);

  vib_A = analogRead(A3);
  vib_B = analogRead(A4);
  vib_C = analogRead(A5);

  // 초음파 센서
  long duration, distance;

  digitalWrite(TRIG, LOW);
  delayMicroseconds(2);
  digitalWrite(TRIG, HIGH);
  delayMicroseconds(10);
  digitalWrite(TRIG, LOW);

  duration = pulseIn (ECHO, HIGH); //물체에 반사되어돌아온 초음파의 시간을 변수에 저장합니다.

  distance = duration * 17 / 1000;

  Serial.print((String) sound_A + " " + sound_B + " " + sound_C + " ");
  Serial.print((String) vib_A + " " + vib_B + " " + vib_C);
  Serial.print(" ");

  Serial.println(distance); //측정된 물체로부터 거리값(cm값)을 보여줍니다.
  delay(1000); //1초마다 측정값을 보여줍니다.
}
