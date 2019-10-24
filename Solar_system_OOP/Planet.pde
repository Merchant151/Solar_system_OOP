class Planet
{
  float diameter, distance, orbitSpeed;
  float theta = 0;
  Planet(float diameter, float distance, float orbitSpeed){
    
  }
  void display(){
  pushMatrix();
  rotate(theta);
  translate(100, 0);
  fill(50,255,255);
  ellipse(0,0,30,30); 
  }
}
