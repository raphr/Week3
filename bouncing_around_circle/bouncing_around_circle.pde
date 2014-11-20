float x, y;
float ballSize = 40;
float XSpeed = 5, YSpeed = 5;
float gravity = 0.5;
float braking = 0.09;


void setup() {
  size (600, 605); 
  y = ballSize * 1.5;
  x = width/2;
}

void draw() {

  background (#9531C1); 
  fill(200, 100, 10) ;
  ellipse(x, y, 100, 100);
  y = y + YSpeed;
  x = x + XSpeed;
  YSpeed = YSpeed + gravity;


  if (y + ballSize/2 > height) {
    YSpeed *= -(1-braking);
    y = height - ballSize/2;
  }
  if (x + ballSize/2 >= width) {
    XSpeed *= -(1 - braking);
    x = width - ballSize/2;
  } else if (x - ballSize/2 <= 0) {
    XSpeed *= -(1- braking);
    x = ballSize/2;
  }
}


