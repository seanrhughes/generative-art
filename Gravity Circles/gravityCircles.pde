float defaultSize;
ArrayList<Point> pointSet = new ArrayList<Point>();
Tileset set;

void setup() {
  size(2532, 2532);
  background(#ddd6cd);
  background(#F9F8F4);
  stroke(0);
  noFill();
  frameRate(45);
 
  defaultSize = width / 20;
  /*
  Point k = new Point(random(width), random(width));
  pointSet.add(k);
  fill(random(256), random(256), random(256));
  ellipse(k.x, k.y, defaultSize, defaultSize);
  */
  griddedCircles();
}

void draw() {
}

void addCircle() {
  boolean fits = false;
  Point e;
  float currentSize = defaultSize;
  float pointX = random(width);
  float pointY = random(width);
  e = new Point(pointX, pointY);
  System.out.println("new point");
  fits = e.canFit(currentSize, pointSet);
  fill(random(255), random(255), random(255));   
  if (fits == false) {
    //currentSize /= 2;
    //ellipse(e.x, e.y, currentSize, currentSize);
    //e.set(random(width), random(width));
    //continue;
    System.out.println("first == false");
  } else if (fits == true) {
    pointSet.add(e);
    ellipse(pointX, pointY, currentSize, currentSize);
    fits = true;
    System.out.println("fits == true");
  }
  System.out.println("looping");
  /*if (currentSize == defaultSize / 8) {
    break;
  }*/
}

void griddedCircles() {
  noStroke();
  float offset = width / 5;
  float halfset = offset / 2;
  float placement = width / 20;
  placement = 20;
  float place = (width == 1080)? placement * 2 : placement;
  ellipseMode(CORNER);
  set = new Tileset(width - offset, offset);
  for (Point[] e : set.grid) {
    for (Point j : e) {
      fill(j.r, j.g, j.b);
      quad(halfset + (place / 2) - random(place) + j.x + width / 20, halfset + (place / 2) - random(place) + j.y + width / 20, 
      halfset + (place / 2) - random(place) + j.x + width / 20 + width / 10, halfset + (place / 2) - random(place) + j.y + width / 20, 
      halfset + (place / 2) - random(place) + j.x + width / 20 + width / 10, halfset + (place / 2) - random(place) + j.y + width / 20 + width / 10, 
      halfset + (place / 2) - random(place) + j.x + width / 20, halfset + (place / 2) - random(place) + j.y + width / 20 + width / 10);
      //place += width / 75;
      noFill();
      stroke(255);
      rect(j.x + halfset + width / 20, j.y + halfset + width / 20, halfset, halfset);
      noStroke();
    }
  }
  for (Point[] e : set.grid) {
    for (Point j : e) {
      fill(j.r, j.g, j.b);
      int rand = (int)random(4);
      /*switch(rand) {
        case(0):
          ellipse(halfset + j.x + place, halfset + j.y, width / 12, width / 12);
          break;
        case(1):
          ellipse(halfset + j.x - place, halfset + j.y, width / 12, width / 12);
          break;
        case(2):
          ellipse(halfset + j.x, halfset + j.y + place, width / 12, width / 12);
          break;
        case(3):
          ellipse(halfset + j.x, halfset + j.y - place, width / 12, width / 12);
          break;
      }*/
      
      //ellipse(halfset + j.x, halfset + j.y, width / 12, width / 12);
    }
  }
}

void keyPressed() {
  if (key == 'r') {
    setup();
  } else if (key == ' ') {
    String filename = "gravityCircles, seed" + width + (int)random(10000) + ".png";
    save(filename);
  }
}
