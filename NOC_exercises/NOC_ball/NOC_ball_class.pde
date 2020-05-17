class Ball {
  PVector pos;
  PVector vel;
  
  Ball() {
    pos = new PVector(width/2, height/2);
    vel = new PVector(2.5, -2);
  }
  
  void move() {
    pos.add(vel);
  }
  
  void bounce() {
   if (pos.x > width || pos.x < 0) {
     vel.x = vel.x * -1;
   }
   if(pos.y > height || pos.y < 0) {
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
