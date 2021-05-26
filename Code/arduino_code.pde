/******************
#define xPin A1
#define yPin A0

char str[7];

void setup() 
{
  Serial.begin(9600);
  pinMode(xPin,INPUT);
  pinMode(yPin,INPUT);
}

void loop() 
{
  int x=analogRead(xPin);
  int y=analogRead(yPin);
  x=map(x,0,1023,900,0);
  y=map(y,0,1023,0,900);
  fun(x,y);
  Serial.write(str);
  delay(50);
}

void fun(int x,int y)
{
  str[0]=x/100+'0';
  str[1]=(x%100)/10+'0';
  str[2]=x%10+'0';
  str[3]=y/100+'0';
  str[4]=(y%100)/10+'0';
  str[5]=y%10+'0';
  str[6]='\0';
}
****************/
