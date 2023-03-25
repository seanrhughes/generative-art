float increment = 0;
void setup() {
  size(1080, 1080);
  background(ColorPalettes.canvas);
  background(ColorPalettes.richBlack);
  //perlin();
  perlinLine();
}

void perlin() {
  float big = 1;
  float small = .005;
  for (int y = 0; y < height; y += big) {
    for(int x = 0; x < width; x += big) {
      float n = noise(x * small + increment, y * small + increment);
      stroke(n * 255, n * 255, n * 255);
      //point(x, y);
      noStroke();
      fill(n * 255,n * 255, n * 255);
      rect(x, y, big, big);
    }
  }
}

void perlinLine() {
  stroke(255);
  strokeWeight(.5);
  float big = 1;
  float small = .01;
  for (float y = 0; y < height; y += big) {
    for (float x = 0; x < width; x += big) {
      float n = noise(x * small + increment, y * small + increment);
      point(x, height * n);
    }
  }
  /*
  for (float x = 0; x < width; x += big) {
    float n = noise(x * small * increment);
    point(x, height * n);
  }*/
}

void keyPressed() {
  if (key == ' ') {
    String filename = "perlinNoiseContd, width " + width + ", seed " + random(10000);
    save(filename + ".png");
  }
  if (key == 'q') {
    background(ColorPalettes.richBlack);
    perlinLine();
  }
}

void draw() {
}
