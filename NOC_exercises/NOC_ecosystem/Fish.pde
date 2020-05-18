class Fish {
  Movable fish;
  PVector acc;
  float tx, ty;
  int slow, fast;
  float w, h;
  color c;
  
  Fish() {
    fish = new Movable();
    acc = new PVector(0,0); 
    tx = random(1000);
    ty = random(1000);
    slow = 2;
    fast = 5;
    
    float r = random(20, 30);
    w = r;
    h = r;
    c = color(50, 55, 100);
  }
  
  void swim() {
    acc.x = map(noise(tx), 0, 1, -.5, .5);
    acc.y = map(noise(ty), 0, 1, -.5, .5);
    tx += .01;
    ty += .01;
    
    float r = random(1);
    if(r < .6) {
      fish.move(acc, slow);
    } else {
      fish.move(acc, fast);
    }
    fish.edge();
    fish.display(c, w, h);
  }
  
}
