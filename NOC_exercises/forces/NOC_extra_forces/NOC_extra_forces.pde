Ball b;

void setup() {
  size(640,360);
  b = new Ball();
}

void draw() {
  background(0);
  
  PVector gravity = new PVector(0, .3);
  gravity.mult(b.mass);
  b.applyForce(gravity);
  
  if(mousePressed) {
    PVector drag = b.vel.copy();
    drag.normalize();
    float c = -.03j;
    float speed = b.vel.mag();
    
    drag.mult(c*speed*speed);
    b.applyForce(drag);
  }
  
  b.move();
  b.bounce();
  b.display();
}
