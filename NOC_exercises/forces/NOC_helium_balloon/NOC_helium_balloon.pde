Balloon b;

void setup() {
  size(640,360);
  b = new Balloon();
}

void draw() {
  background(0);
  
  PVector helium = new PVector(0, -.5);
  b.applyForce(helium);
  
  PVector wind = new PVector(.5, 0);
  if(mousePressed) {
    b.applyForce(wind);
  }
  
  b.move();
  b.bounce();
  b.display();
}
