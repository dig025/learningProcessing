class Walker {
  float x;
  float y;
  float tx;
  float ty;
  
  Walker() {
    x = width/2;
    y = height/2;
    tx = random(1000);
    ty = random(1000);
  }
  
  void display() {
    stroke(255);
    ellipse(x, y, 10, 10);
  }
  
  void step() {
    x = noise(tx);
    y = noise(ty);
    x = map(x, 0, 1, 0, width);
    y = map(y, 0, 1, 0, height);
    tx = tx + .01;
    ty = ty + .01;
  }
  
}

Walker w;

void setup() {
  size(640, 360);
  w = new Walker();
  background(0);
}

void draw() {
  w.step();
  w.display();
}
