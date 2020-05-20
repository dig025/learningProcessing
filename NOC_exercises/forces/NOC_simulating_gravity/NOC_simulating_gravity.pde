Attractor a;
Movable m;

void setup() {
  size(640, 360);
  a = new Attractor();
  m = new Movable();
}

void draw() {
  background(0);

  PVector f = a.attract(m);
  
  m.applyForce(f);
  
  m.move();
  
  a.drag();
  a.hover(mouseX,mouseY);
  
  a.display();
  m.display();
}

void mousePressed() {
  a.clicked(mouseX, mouseY); 
}

void mouseReleased() {
  a.stopDragging(); 
}
