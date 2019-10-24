float theta = 0;

void setup()
{
  size(600,400);
}

void draw()
{
  background(255);
  translate(width/2, height/2);
  fill(255, 255, 0);
  ellipse(0,0,60,60);
  
  pushMatrix();
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
  theta = theta + 0.01;
}
