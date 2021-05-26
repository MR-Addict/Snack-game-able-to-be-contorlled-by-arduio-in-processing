void setup()
{
  size(900, 900);
  minim = new Minim(this);
  BGM = minim.loadFile("背景音乐.mp3", 1024);
  img = loadImage("picture.jpg");
  BGM.loop();
  PFont myfont=createFont("宋体", 50);
  textFont(myfont);
  if (Serial.list().length>0) {
    isCOM=!isCOM;
    COM=Serial.list();
    myport=new Serial(this, COM[0], 9600);
  }
  textAlign(CENTER);
  px=0;
  py=-speed;
  x=width/2;
  y=height/2;

  //产生随机数
  rand();
  for (int i=limit-1; i>=0; i--) {
    ballx[i]=width/2;
    bally[i]=height/2+speed*i;
  }
}

void draw()
{
  setting();
  if (isCOM)
    serial();
  else {
    fill(black);
    textSize(30);
    text("无串口", 780, 27);
  }
  moving();
}
