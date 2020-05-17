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
  
 void portal(){
   if (pos.x > width) {
     pos.x = 0;
   }
   if(pos.x < 0) {
     pos.x = width;
   }
   if(pos.y > height) {
     pos.y = 0;     
   }
   if(pos.y < 0) {
     pos.y = height; 
   }
  }
  
  void display() {
    stroke(0);
    strokeWeight(2);
    fill(255);
    ellipse(pos.x, pos.y, 40, 40);
  }
}
