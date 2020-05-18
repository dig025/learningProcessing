class Balloon {
  PVector pos;
  PVector vel;
  PVector acc;
  
  Balloon() {
    pos = new PVector(width/2, height/2);
    vel = new PVector(0, 0);
    acc = new PVector(0, 0);
  }
  
  void applyForce(PVector force) {
    acc.add(force);
  }
  
  void move() {
    vel.add(acc);
    pos.add(vel);
    vel.limit(8);
    
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
     vel.y = vel.y * -.9; 
   }
   
   if(pos.y < 0) {
     pos.y = 0;
     vel.y = vel.y * -.9;
   }
  }
  
  void display() {
    stroke(0);
    strokeWeight(2);
    fill(255);
    ellipse(pos.x, pos.y, 40, 40);
  }
}
