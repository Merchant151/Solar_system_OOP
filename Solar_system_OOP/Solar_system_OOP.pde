Planet[] myPs = new Planet[4];
void setup()
{
  size(600,600);
  int[] usedRange = new int[myPs.length];
  int range = (int)random(149,250);
  System.out.println("original range "+ range);
  usedRange[0] = range;
  int count = 1;
  do{
    range = (int)random(149,250);
    for (int k : usedRange)
     {
      
      if(k > range-10|| k < range +10)
      {
        System.out.println(count);
        usedRange[count] = range; 
        count++; 
      }
   }
  }while(count<myPs.length-1);
  for(int i=0;i < myPs.length;i++)
  {  
    System.out.println(usedRange[i]);
    myPs[i] = new Planet(random(29,50),usedRange[i],random(0.01,0.02));
  }
}
void draw()
  {
    background(255);
    translate(width/2, height/2);
    fill(255, 255, 0);
    ellipse(0,0,60,60);
  
  for(int i=0;i < myPs.length;i++){
  myPs[i].display();
  }
  /*pushMatrix();
  rotate(theta);
  translate(100, 0);
  fill(50,255,255);
  ellipse(0,0,30,30);
  
  pushMatrix();//stores planet cordintate transformation state
  rotate(theta *2 );
  translate(40,0);
  fill(50,255,100);
  ellipse(0,0,15,15);
  popMatrix();
  
  pushMatrix();
  rotate(theta * 4);
  translate(25,0);
  fill(50,255,100);
  ellipse(0,0,10,10);
  popMatrix();
  popMatrix();
  
  pushMatrix();//stores planet cordintate transformation state
  rotate(theta *-1);
  translate(180,0);
  fill(50,255,255);
  ellipse(0,0,20,20);
  
  
  pushMatrix();
  rotate(theta * -2);
  translate(20, 0);
  fill(50,255,100);
  ellipse(0,0,10,10);
  popMatrix();
  popMatrix();
  theta = theta + 0.01;*/
}
