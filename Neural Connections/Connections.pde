import java.lang.Math;
void setup() {
  size(1080, 1080);
  background(ColorPalettes.richBlack);
  stroke(255);
  strokeWeight(.25);
  connections();
}

void connections() {
  int numberOfPoints = 100;
  RandomPoints[] arr = new RandomPoints[numberOfPoints];
  for (int i = 0; i < numberOfPoints; i++) {
    RandomPoints e = new RandomPoints(width);
    arr[i] = e;
  }
  
  for (int j = 0; j < arr.length; j++) {
    for (int k = j + 1; k < arr.length; k++) {
      if (Math.abs((arr[j].x - (width / 2)) / 2) > Math.abs(((arr[k].x - (width / 2))) / 2)) {
        if (Math.abs((arr[j].y - (width / 2)) / 2) > Math.abs((arr[k].y - (width / 2)) / 2)) {
          line(arr[j].x, arr[j].y, arr[k].x, arr[k].y);
        }
      }
    }
  }
}

void draw() {
}

void keyPressed() {
  if (key == ' ') {
    save("Connections, seed " + (int)random(10000) + ".png");
  } else if (key == 'r') {
    setup();
  }
}
