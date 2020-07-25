function Bird() {
  this.y = height / 2;
  this.x = 150;
  this.r = 20;
  
  this.g = 1;
  this.vel = 0;
  
  this.display = function() {
    fill(255);
    ellipse(this.x, this.y, 2 * this.r, 2 * this.r);
  };
  
  this.fall = function() {
    this.vel += this.g;
    
    if (this.y >= height) {
      this.vel = 0;
      this.y = height;
    }
    if (this.y <= 0) {
      this.vel = 0;
      this.y = 0;
    }
    
    this.y += this.vel;
  };
  
  this.flap = function() {
    this.vel = -10;
  };
}
