Ball b;

void setup() {
  size(640,360);
  b = new Ball();
}

void draw() {
  background(0);
  b.move();
  b.portal();
  b.display();
}
