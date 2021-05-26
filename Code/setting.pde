void setting()
{
  background(white);
  fill(white);
  stroke(black);
  strokeWeight(5);
  rect(head, head, width-head*2, height-head*2);

  //输出状态
  noStroke();
  fill(black);
  textSize(30);
  text("已吃苹果个数：", 150, 25);
  text((limit-50)/10, 250, 25);
  text("蛇的长度：", 400, 25);
  text(limit, 480, 25);
  text("速度：", 600, 25);
  text(speed, 660, 25);

  //产生墙体
  fill(brown);
  for (int i=0; i<subrock/2; i++)
    rect(rockx[i], rocky[i], 20, 100);
  for (int i=subrock/2; i<subrock; i++)
    rect(rockx[i], rocky[i], 100, 20);

  //产生苹果
  fill(green);
  ellipse(fruitx, fruity, head, head);

  //判断是否吃到水果
  float result=(fruitx-x)*(fruitx-x)+(fruity-y)*(fruity-y)-radius*radius;
  if (result<0) {
    speed+=0.1;
    if (limit<=num)limit+=10;
    if (subrock<=rock)
      if (((limit-50)/10)%5==0)subrock++;
    rand();
  }
}
