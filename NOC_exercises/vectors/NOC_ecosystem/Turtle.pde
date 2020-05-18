class Turtle {
  Movable turtle;
  PVector acc;
  float tx, ty;
  float max_speed;
  float w, h;
  color c;  
  Turtle() {
    turtle = new Movable();
    acc = new PVector(0,0); 
    tx = random(1000);
    ty = random(1000);
    max_speed = .5;
    
    float r = randomGaussian() + 60;
    w = r;
    h = r;
    c = color(138, 154, 91);
  }
  
  void swim() {
    acc.x = map(noise(tx), 0, 1, -.05, .05);
    acc.y = map(noise(ty), 0, 1, -.05, .05);
    tx += .001;
    ty += .001;
    turtle.move(acc, max_speed);
    turtle.edge();
    turtle.display(c, w, h);
  }
  
}
