class Ball {
  PVector pos;
  PVector vel;
  PVector acc;
  float mass;
  
  Ball() {
    pos = new PVector(width/2, height/2);
    vel = new PVector(0, 0);
    acc = new PVector(0, 0);
    mass = 1;
  }
  
  void applyForce(PVector force) {
    PVector f = force.copy();
    f.div(mass);
    acc.add(f);
  }
  
  void move() {
    vel.add(acc);
    pos.add(vel);
    
    acc.mult(0);
  }
  
  void bounce() {
   if (pos.x > width) {
     pos.x = width;
     vel.x = vel.x * -1;
   }
   if (pos.x < 0) {
     pos.x = 0;
     vel.x = vel.x * -1;
   }
   if(pos.y > height) {
     pos.y = height;
     vel.y = vel.y * -1; 
   }
   
   if(pos.y < 0) {
     pos.y = 0;
     vel.y = vel.y * -1;
   }
  }
  
  void display() {
    stroke(0);
    strokeWeight(2);
    fill(255);
    ellipse(pos.x, pos.y, 40, 40);
  }
}
