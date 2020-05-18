class Movable {
  PVector pos;
  PVector vel;
  PVector acc;
  PVector mouse;
  
  Movable() {
    pos = new PVector(width/2, height/2);
    vel = new PVector(0, 0);
    acc = new PVector(0, 0);
  }
  
  void move(PVector acc, float limit) {
    vel.add(acc);
    pos.add(vel);
    vel.limit(limit);
  }
  
 void edge(){
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
  
  void display(color c, float w, float h) {
    stroke(0);
    strokeWeight(2);
    fill(c);
    ellipse(pos.x, pos.y, w, h);
  }
}
