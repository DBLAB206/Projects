int inputPIN = 2;    
int valueRead = 0;  
  
void setup() {  
   pinMode(inputPIN, INPUT);   
   Serial.begin(9600);    
}  
  
void loop(){  
  valueRead = digitalRead(inputPIN);    
  if ((valueRead == HIGH)) {    
      Serial.println("Motion detected!");    
   }  
  else{  
      if((valueRead == LOW)){  
        Serial.println("Motion ended!");    
      }  
   }  
   delay(1000);  
}  
