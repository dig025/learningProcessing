function Pipe() {
  this.x = width;
  this.w = 80;
  this.gap = 160;
  
  this.top_y = random(this.gap / 2, height - this.gap * 3 / 2);
  this.bot_y = this.top_y + this.gap;
  
  this.vel = 5;
  
  this.display = function() {
    fill(0, 255, 0);
    
    var top = rect(this.x, 0, this.w, this.top_y);  //Top pipe
    var bot = rect(this.x, this.bot_y, this.w, height - this.bot_y);  //Bottom pipe
  };
  
  this.move = function() {
    this.x -= this.vel;
  };
  
  this.collide = function(bird) {
    if (bird.x + bird.r > this.x && bird.x + bird.r < this.x + this.w) {
      if (bird.y - bird.r <= this.top_y) {
        bird.vel = height;
        return true;
      }
      
      if (bird.y + bird.r >= this.bot_y) {
        bird.vel = height;
        return true;
      }
    }
    
    return false;
  };
}
