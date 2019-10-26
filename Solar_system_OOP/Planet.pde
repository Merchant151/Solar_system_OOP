class Planet
{
  float diameter, distance, orbitSpeed;
  float theta = 0;
  float x,z;
  Planet(float diameter, float distance, float orbitSpeed){
    this.diameter = diameter;
    this.distance = distance;
    this.orbitSpeed = orbitSpeed;
    this.x = random(0,244);
    this.z = random(211,254);
  }
   
  void display(){
  pushMatrix();
  rotate(theta);
  translate(distance, 0);
  fill(x,255,z);
  ellipse(0,0,diameter,diameter); 
  popMatrix();
  theta = theta + orbitSpeed;
  }
}
