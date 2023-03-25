void setup() {
  size(1080, 1080);
  background(0, 0, 0);
  unsure();
}

void unsure() {
  background(ColorPalettes.canvas);
  stroke(0);
  strokeWeight(.01);
  for (int i = 0; i < 360 * 1000; i++) {
    int randomX = (int)random(width);
    int randomY = (int)random(height);
    if (dist(randomX, randomY, width / 2, height / 2) < width / 2) {
      point(randomX, randomY);
    }
    fill(0);
    point(i/100 * cos(i) + width / 2, i/100 * sin(i) + height / 2);
    if ((int)random(2) == 1) {
      line(i/100 * cos(i) + width / 2, i/100 * sin(i) + height / 2, (i+1)/100 * cos(i+1) + width / 2, (i+1)/100 * sin(i+1) + height / 2);
    }
  }
  /* noStroke();
   ellipse(width / 2, height / 2, 2 * width / 5.4, 2 * width / 5.4);
   stroke(255);*/
}
void draw(){}

void keyPressed() {
  if (key == ' ') {
    String filename = "Unsure, " + width + ", seed " + random(10000) + ".png";
    save(filename);
  }
  if (key == 'r') {
    setup();
  }
}
