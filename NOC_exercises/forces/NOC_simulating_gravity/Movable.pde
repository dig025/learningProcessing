class Movable {

  PVector pos;
  PVector vel;
  PVector acc;
  float mass;

  Movable() {
    pos = new PVector(400,50);
    vel = new PVector(1,0);
    acc = new PVector(0,0);
    mass = 1;
  }
  
  void applyForce(PVector force) {
    PVector f = PVector.div(force,mass);
    acc.add(f);
  }
  
  void move() {
    vel.add(acc);
    pos.add(vel);
    acc.mult(0);
  }

  void display() {
    stroke(0);
    strokeWeight(2);
    fill(127);
    ellipse(pos.x,pos.y,16,16);
  }

  void checkEdges() {

    if (pos.x > width) {
      pos.x = 0;
    } else if (pos.x < 0) {
      pos.x = width;
    }

    if (pos.y > height) {
      vel.y *= -1;
      pos.y = height;
    }

  }

}
