Fish[] fishes;
Firefly[] fireflies;
Turtle[] turtles;

void setup() {
  size(1000,500);

  fishes = new Fish[5];
  fireflies = new Firefly[6];
  turtles = new Turtle[3];
  
  for(int i = 0; i < fireflies.length; i++) {
    fishes[i % fishes.length] = new Fish();
    fireflies[i] = new Firefly();
    turtles[i % turtles.length] = new Turtle();
  }
}

void draw() {
  background(64, 164, 223);
   
  for(int i = 0; i < fireflies.length; i++) {
    fishes[i % fishes.length].swim();
    fireflies[i].fly();
    turtles[i % turtles.length].swim();
  }
}
