class Attractor {
  float mass;    // Mass, tied to size
  float G;       // Gravitational Constant
  PVector pos;   // pos
  boolean dragging = false; // Is the object being dragged?
  boolean rollover = false; // Is the mouse over the ellipse?
  PVector dragOffset;  // holds the offset for when object is clicked on

  Attractor() {
    pos = new PVector(width/2,height/2);
    mass = 20;
    G = 1;
    dragOffset = new PVector(0.0,0.0);
  }

  PVector attract(Movable m) {
    PVector force = PVector.sub(pos,m.pos);   // Calculate direction of force
    float d = force.mag();                              // Distance between objects
    d = constrain(d,5.0,25.0);                          // Limiting the distance to eliminate "extreme" results for very close or very far objects
    force.normalize();                                  // Normalize vector (distance doesn't matter here, we just want this vector for direction)
    float strength = (G * mass * m.mass) / (d * d);     // Calculate gravitional force magnitude
    force.mult(strength);     // Get force vector --> magnitude * direction
    return force;
  }

  // Method to display
  void display() {
    ellipseMode(CENTER);
    strokeWeight(4);
    stroke(0);
    if (dragging) fill (50);
    else if (rollover) fill(100);
    else fill(175,200);
    ellipse(pos.x,pos.y,mass*2,mass*2);
  }

  // The methods below are for mouse interaction
  void clicked(int mx, int my) {
    float d = dist(mx,my,pos.x,pos.y);
    if (d < mass) {
      dragging = true;
      dragOffset.x = pos.x-mx;
      dragOffset.y = pos.y-my;
    }
  }

  void hover(int mx, int my) {
    float d = dist(mx,my,pos.x,pos.y);
    if (d < mass) {
      rollover = true;
    } 
    else {
      rollover = false;
    }
  }

  void stopDragging() {
    dragging = false;
  }



  void drag() {
    if (dragging) {
      pos.x = mouseX + dragOffset.x;
      pos.y = mouseY + dragOffset.y;
    }
  }

}
