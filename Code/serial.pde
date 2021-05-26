void serial()
{
  fill(black);
  textSize(30);
  text("串口：", 780, 27);
  text(COM[0], 850, 27);
  //从串口接收数据
  if (myport.available()>0) {
    str=myport.readString();
    println(str);
    if (str.length()>=6) {
      int i=(str.charAt(0)-'0')*100+(str.charAt(1)-'0')*10+str.charAt(2)-'0';
      int j=(str.charAt(3)-'0')*100+(str.charAt(4)-'0')*10+str.charAt(5)-'0';
      if (abs(limitx-i)<=3)i=0;
      else i=i-limitx;
      if (abs(limity-j)<=3)j=0;
      else j=j-limity;
      //定义比例数据
      if (!(i==0&&j==0)) {
        px=speed*i/sqrt(i*i+j*j+0.0001);
        py=speed*j/sqrt(i*i+j*j+0.0001);
      }
    }
  }
}
