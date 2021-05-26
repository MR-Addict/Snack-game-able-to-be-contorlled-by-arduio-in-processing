void moving()
{
  x+=px;
  y+=py;

  //判断是否出界
  if (x>width-head)x=head;
  else if (x<head)x=width-head;
  if (y>height-head)y=head;
  else if (y<head)y=height-head;

  //产生头部
  fill(red);
  ellipse(x, y, head, head);

  //产生身体
  if (!(px==0&&py==0)) {
    for (int i=limit-1; i>0; i--) {
      ballx[i]=ballx[i-1];
      bally[i]=bally[i-1];
    }
    ballx[0]=x;
    bally[0]=y;
  }
  fill(black);
  for (int i=0; i<limit; i++)
    ellipse(ballx[i], bally[i], radius, radius);

  //判断是否有碰到自己的身体  
  float result=0;
  for (int i=head; i<limit; i++) {
    result=(ballx[i]-x)*(ballx[i]-x)+(bally[i]-y)*(bally[i]-y)-radius*radius;
    if (result<0)break;
  }

  //判断是否撞上了墙体
  for (int i=0; i<subrock/2; i++)
    if (x>=rockx[i]&&x<=rockx[i]+20&&y>=rocky[i]&&y<=rocky[i]+100) {
      result=-1;
      break;
    }
  for (int i=subrock/2; i<subrock; i++)
    if (x>=rockx[i]&&x<=rockx[i]+100&&y>=rocky[i]&&y<=rocky[i]+20) {
      result=-1;
      break;
    }
  if (result<0) {
    fill(black);
    textSize(100);
    text("GAME OVER", width/2, height/2);
    //save("reuslt.jpg");
    noLoop();
  }
}
