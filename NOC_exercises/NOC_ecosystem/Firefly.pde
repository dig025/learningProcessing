class Firefly {
  Movable fly;
  PVector acc;
  int max_speed;
  float w, h;
  color c;  
  Firefly() {
    fly = new Movable();
    acc = new PVector(0,0); 
    max_speed = 5;
    
    float r = randomGaussian() + 10;
    w = r;
    h = r;
    c = color(255, 204, 0);
  }
  
  void fly() {
    acc.x = random(-2, 2);
    acc.y = random(-2, 2);
 
    fly.move(acc, max_speed);
    fly.edge();
    fly.display(c, w, h);
  }
  
}
