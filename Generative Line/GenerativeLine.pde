Tile[][] arr;
int divisor = 8;
float sectioned = width / 10;
RandomColor randColor = new RandomColor();
PImage img;

public void setup() {
  img = loadImage("tryThis.png");
  size(1080, 1080);
  background(0);
  noFill();
  stroke(0);
  strokeWeight(1);
  fill(255);
  noStroke();
  float tileSize = width / 3;
  Tileset tilemap = new Tileset(width, tileSize);
  int counter = 0;
  int mapCounter = 1;
  
  for (Point[] e : tilemap.grid) {
    for (Point j : e) {
      if (counter == 1) {
        counter --;
        continue;
      }
      fill(255);
      //rect(j.x, j.y, tileSize, tileSize);
      noFill();
      
      switch (mapCounter) {
        case(1):
          float dividing = 5;
          Tileset small = new Tileset(tileSize, tileSize / dividing);
          Tileset compare = new Tileset(img.width, img.width / dividing);
          int counterX = 0;
          int counterY = 0;
          for (Point[] q : small.grid) {
            for (Point w : q) {
              if (counterX >= dividing) {
                counterX = 0;
              }
              fill(img.get((int)compare.grid[counterY][counterX].x, (int)compare.grid[counterY][counterX].y));
              //randColor.refresh();
              rect(w.x + j.x, w.y + j.y, tileSize / dividing, tileSize / dividing);
              counterX++;
            }
            if (counterY >= dividing) {
              counterY = 0;
            }
            counterY ++;
          }
          break;
        case(2):
          float dividing2 = 20;
          Tileset small2 = new Tileset(tileSize, tileSize / dividing2);
          Tileset compare2 = new Tileset(img.width, img.width / dividing2);
          int counterX2 = 0;
          int counterY2 = 0;
          for (Point[] q : small2.grid) {
            for (Point w : q) {
               if (counterX2 >= dividing2) {
                counterX2 = 0;
              }
              fill(img.get((int)compare2.grid[counterY2][counterX2].x, (int)compare2.grid[counterY2][counterX2].y));
              //randColor.refresh();
              rect(w.x + j.x, w.y + j.y, tileSize / dividing2, tileSize / dividing2);
              counterX2++;
            }
            if (counterY2 >= dividing2) {
              counterY2 = 0;
            }
            counterY2 ++;
          }
          break;
        case(4):
          float dividing4 = 10;
          Tileset small4 = new Tileset(tileSize, tileSize / dividing4);
          Tileset compare4 = new Tileset(img.width, img.width / dividing4);
          int counterX4 = 0;
          int counterY4 = 0;
          for (Point[] q : small4.grid) {
            for (Point w : q) {
               if (counterX4 >= dividing4) {
                counterX4 = 0;
              }
              fill(img.get((int)compare4.grid[counterY4][counterX4].x, (int)compare4.grid[counterY4][counterX4].y));
              //randColor.refresh();
              rect(w.x + j.x, w.y + j.y, tileSize / dividing4, tileSize / dividing4);
              counterX4++;
            }
            if (counterY4 >= dividing4) {
              counterY2 = 0;
            }
            counterY4 ++;
          }
          break;
        case(3):
          float dividing3 = 90;
          Tileset small3 = new Tileset(tileSize, tileSize / dividing3);
          Tileset compare3 = new Tileset(img.width, img.width / dividing3);
          int counterX3 = 0;
          int counterY3 = 0;
          for (Point[] q : small3.grid) {
            for (Point w : q) {
               if (counterX3 >= dividing3) {
                counterX3 = 0;
              }
              fill(img.get((int)compare3.grid[counterY3][counterX3].x, (int)compare3.grid[counterY3][counterX3].y));
              //randColor.refresh();
              rect(w.x + j.x, w.y + j.y, tileSize / dividing3, tileSize / dividing3);
              counterX3++;
            }
            if (counterY3 >= dividing3) {
              counterY3 = 0;
            }
            counterY3 ++;
          }
          break;
        case(5):
          float dividing5 = 40;
          Tileset small5 = new Tileset(tileSize, tileSize / dividing5);
          Tileset compare5 = new Tileset(img.width, img.width / dividing5);
          int counterX5 = 0;
          int counterY5 = 0;
          for (Point[] q : small5.grid) {
            for (Point w : q) {
               if (counterX5 >= dividing5) {
                counterX5 = 0;
              }
              fill(img.get((int)compare5.grid[counterY5][counterX5].x, (int)compare5.grid[counterY5][counterX5].y));
              //randColor.refresh();
              rect(w.x + j.x, w.y + j.y, tileSize / dividing5, tileSize / dividing5);
              counterX5++;
            }
            if (counterY5 >= dividing5) {
              counterY5 = 0;
            }
            counterY5 ++;
          }
          break;
      }
      noFill();
      rect(j.x, j.y, tileSize, tileSize);
      counter ++;
      mapCounter ++;
    }
  }
}

void keyPressed() {
  if (key == 'r') {
    //setup();
    image(img, 0, 0);
  } else if (key == ' ') {
    String filename = "GenerativeLine " + width + ", seed " + random(10000) + ".png";
    save(filename);
  }
}

void draw() {
}
