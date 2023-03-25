float x;
float y;
float x2;
float y2;
int multiplyer = 1;
float xSpeed;
float ySpeed = 0 * multiplyer;
float xSpeed2 = 0 * multiplyer;
float ySpeed2;
boolean stopped = false;

void setup() {
  size(1080, 1080);
  background(0);
  stroke(255);
  strokeWeight(.25);
  x = width / 6;
  y = width - 1;
  x2 = (5 * width) / 6;
  y2 = width - 1;
  xSpeed = (((5 * width) / 6)/50) * multiplyer;
  ySpeed2 = -(width / 50) * multiplyer;
  /*
  for(int i = 0; i < 540; i++) {
    drawt();
  }*/
}

void drawt() {
}
void draw() {
  if (!stopped) {
    line(x, y, x2, y2);
  }
  if (x >= width || x <= 0) {
    //stopped = true;
    xSpeed *= -1;
  } 
  if (y >= width || y <= 0) {
    ySpeed *= -1;
  }
  if (x2 >= width || x2 <= 0) {
    xSpeed2 *= -1;
  }
  if (y2 >= width || y2 <= 0) {
    ySpeed2 *= -1;
    //stopped = true;
  }
  x += xSpeed;
  y += ySpeed;
  x2 += xSpeed2;
  y2 += ySpeed2;
}

void keyPressed() {
  if (key == ' ') {
    String filename = "linesOnCurves, seed" + (int)random(10000) + ".png";
    save(filename);
  }
  if (key == 'r') {
    setup();
  }
}
