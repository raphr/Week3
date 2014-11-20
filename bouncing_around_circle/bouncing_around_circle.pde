float x, y;
float ballSize = 40;
float speed = 5;
boolean movingUp=false;
boolean movingLeft=false;

void setup() {
  size (600, 400); 
  y = ballSize * 1.5;
  x = width/2;
  fill(208);
}

void draw() {

//  background (#9531C1); 
  fill(40, 150, 150) ;
  ellipse(x, y, 100, 100);


  if (y + ballSize/2 >= height) {
    movingUp=true;
  } else if (y - ballSize/2 <= 0) {
    movingUp = false;
  }

  if (movingUp) {
    y = y - speed;
  } else {
    y = y + speed;
  }
  
   if (x + ballSize/2 >= width) {
    movingLeft=true;
  } else if (x - ballSize/2 <= 0) {
    movingLeft = false;
  }

  if (movingLeft) {
    x = x - speed;
  } else {
    x = x + speed;
  }
}


