class Walker {
  float x;
  float y;
  float tx;
  float ty;
  
  Walker() {
    x = width/2;
    y = height/2;
    tx = random(10);
    ty = random(10);
  }
  
  void display() {
    stroke(255);
    ellipse(x,y, 100, 100);
  }
  
  void step() {
    x = noise(tx);
    y = noise(ty);
    tx += 0.01;
    ty += 0.01;
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
