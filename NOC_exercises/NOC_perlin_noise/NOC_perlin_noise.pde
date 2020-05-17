float t = 0;

void setup() {
  size(600,400);
}

void draw() {
  background(0);
  fill(255);
  
  float x = noise(t);
  x = map(x, 0, 1, 0, width);
  t = t + .01;
  ellipse(x, height/2, 40,40);
}
