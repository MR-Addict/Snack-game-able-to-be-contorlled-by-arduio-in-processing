void rand()
{
 //产生苹果随机数
 do{
  fruitx=random(head, width-head);
  fruity=random(head, height-head);
 }while(!(abs(fruitx-x)>=50&&abs(fruity-y)>=50));
  
  //产生墙体随机数
  for (int i=subrock-1; i>=0; i--) {
     do{
    rockx[i]=random(100, width-130);
    rocky[i]=random(100, height-130);
     }while(!(abs(rockx[i]-x)>=50&&abs(rocky[i]-y)>=50));
  }
}
