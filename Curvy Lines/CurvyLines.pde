void setup() {
  size(2048, 1152);
  background(ColorPalettes.prussianBlue);
  background(ColorPalettes.darkPurple);
  stroke(255);
  strokeWeight(.5);
  noFill();
  curvyLines();
}

void curvyLines() {
  float posX = width * .5;
  float posY = height * .5;
  float startFirst = width * .12;
  float endFirst = height * .5;
  float startLast = width * .88;
  float endLast = height * .5;
  //line(startFirst, endFirst, startLast, endLast);
  float change = 1.8;
  float size = 200;
  stroke(#FFD700);
  stroke(ColorPalettes.prussianBlue);
  stroke(255);
  strokeWeight(.1);
  float lastRandomX = random(width);
  float lastRandomY = random(width);
  for (int i = 0; i < 1000; i ++) {
    bezier(startFirst + ((sin((i))) * (size)), endFirst + ((cos((i))) * (size)), posX + (cos(radians(i)) * (height / change)), posY - (sin(radians(i)) * (height / change)),
                      posX + (cos(radians(i)) * (height / change)), posY - (sin(radians(i)) * (height / change)), startLast + sin((i)) * (size), endFirst + cos((i)) * (size));
    line(startFirst, endFirst, posX + cos(radians(i)) * (width / 4), posY + sin(radians(i)) * (width / 4));
    line(startLast, endLast, posX + cos(radians(i)) * (width / 4), posY + sin(radians(i)) * (width / 4));
   
   float newRandomX = random(width);
   float newRandomY = random(width);
   line(lastRandomX, lastRandomY, newRandomX, newRandomY);
   lastRandomX = newRandomX;
   lastRandomY = newRandomY;
  }
  fill(ColorPalettes.darkPurple);
  stroke(255);
  
  fill(255);
  noFill();
  stroke(255);
  ellipse(width / 6, height / 2, 200, 200);
  ellipseMode(CORNERS);
  ellipse(width / 5, height / 2, 500, 200);
}


void keyPressed() {
  if (key == ' ') {
    String filename = "CurvyLines, seed " + random(10000) + ".png";
    save(filename);
  }
  
  if (key == 'r') {
    setup();
  }
}

void draw() {
}
