void reset()
{
  //重置游戏数据
  limit=50;
  speed=2;
  subrock=4;
  px=0;
  py=-speed;
  x=width/2;
  y=height/2;
  rand();
  for (int i=limit-1; i>=0; i--) {
    ballx[i]=width/2;
    bally[i]=height/2+speed*i;
  }
  loop();
}
