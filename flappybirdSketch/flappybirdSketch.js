var birds = [];
var pipes = [];

function setup() {
  createCanvas(480, 640);
  frameRate(30);
  
  birds.push(new Bird());
  pipes.push(new Pipe());
}


function draw() {
  background(0);
  
  if(frameCount % 60 == 0) {
    pipes.push(new Pipe()); 
  }
  
  var i;
  var j;
  var stop = false;
  
  for (i = birds.length - 1; i >= 0; --i){
    birds[i].display();
    birds[i].fall();
  }
  
  for (i = pipes.length - 1; i >= 0; --i) {
    pipes[i].display();
    pipes[i].move();
    
    if (pipes[i].x < -1 * pipes[i].w) {
      pipes.splice(i, 1);
    }
    
    for (j = birds.length - 1; j >= 0; --j) {
      stop = pipes[i].collide(birds[j]);
    }
    
  }
  
}

function keyPressed() {
  if (key == ' ') {
    for (var bird of birds) {
      bird.flap();
    }
  }
}
