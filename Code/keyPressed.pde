void keyPressed()
{
  //重新开始
  if (key==32)
    reset();
  //控制蛇的身体
  if (keyCode==UP) {
    px=0;
    py=-speed;
  } else if (keyCode==DOWN) {
    px=0;
    py=speed;
  } else if (keyCode==LEFT) {
    px=-speed;
    py=0;
  } else if (keyCode==RIGHT) {
    px=speed;
    py=0;
  }
}
