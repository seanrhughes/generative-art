Planet earth;
Planet sun;
Planet mercury;
Planet venus;
Planet mars;
Planet jupiter;
Planet saturn;
Planet uranus;
Planet neptune;
float rate = 30;
ArrayList<Planet> planetList = new ArrayList<Planet>();  

void setup() {
  size(1080, 1080);
  background(0);
  fill(255);
  stroke(255);
  frameRate(rate);
  
  createSystem();
  
  for (int i = 0; i < 360 * 1; i++) {
    drawt();
  }
}

void createSystem() {
  strokeWeight(.25);
  //for (int i = 0; i < 180 * 5; i += 5) {
   // line((width / 20) * cos(radians(i)) + (width / 2), (width / 20) * sin(radians(i)) + (width / 2), (width / 20) * cos(radians(i + 180)) + (width / 2), (width / 20) * sin(radians(i + 180)) + (width / 2));
  //}
  strokeWeight(.25);
  float sizeOfEarth = width / 110;
  float au = width / 30;
  sun = new Planet(width / 10 , 0, "counterclockwise", 0);
  mercury = new Planet(sizeOfEarth / 3, au * .39, "counterclockwise", 87.96);
  venus = new Planet(sizeOfEarth * .948, au * .723, "counterclockwise", 224.68);
  earth = new Planet(sizeOfEarth, au, "counterclockwise", 365.26);
  mars = new Planet(sizeOfEarth * .53, au * 1.524, "counterclockwise", 686.98);
  jupiter = new Planet(sizeOfEarth * 11, au * 5.203, "counterclockwise", 11.862 * 365.26);
  saturn = new Planet(sizeOfEarth * 9, au * 9.539, "counterclockwise", 29.456 * 365.26);
  uranus = new Planet(sizeOfEarth * 4, au * 19.18, "counterclockwise", 84.07 * 365.26);
  neptune = new Planet(sizeOfEarth * 4, au * 30 - (sizeOfEarth * 4.5), "counterclockwise", 164.81 * 365.26);
  
  
  planetList.add(mercury);
  planetList.add(venus);
  planetList.add(earth);
  planetList.add(mars);
  planetList.add(jupiter);
  planetList.add(saturn);
  planetList.add(uranus);
  planetList.add(neptune);
  
  noFill();
  //ellipse(width / 2, width / 2, (2 * width) / 5, (2 * width) / 5);
}

void draw() {
}
void drawt() {
  //background(0);
  fill(255);
  String timer = 360 / rate + " seconds = 1 year";
  //text(timer, width / 15, width / 15);
  stroke(255);
  strokeWeight(.35);
  //ellipse(width / 2, width / 2, (2 * width) / 5, (2 * width) / 5);
  //ellipse(width / 2, width / 2, (2 * width) / 2.5, (2 * width) / 2.5);
  colorMode(HSB, 360, 100, 100);
  //fill(counter);
  noFill();
  for (int i = 0; i < planetList.size() - 1; i++) {
    //e.rotatePlanet();
    //e.displayPlanet();
    //float x = e.x;
    //float y = e.y;
    line(planetList.get(i).x, planetList.get(i).y, planetList.get(i + 1).x, planetList.get(i + 1).y);
    planetList.get(i).rotatePlanet();
    //e.displayPlanet();
  }
  //counter++;
  //for (int i = 0; i < planetList.size() - 1; i++) {
    //line(planetList.get(i).x, planetList.get(i).y, planetList.get(i + 1).x, planetList.get(i + 1).y);
  //}
  //sun.displayPlanet();
  //line(earth.x, earth.y, mercury.x, mercury.y);
}  

void keyPressed() {
  if (key == ' ') {
    String filename = "planets " + width + ", seed " + (int)random(10000) + ".png";
    save(filename);
  } else if (key == 'r') {
    planetList.clear();
    setup();
  } else if (key == 'p') {
    rate += 30;
    frameRate(rate);
  } else if (key == 'o') {
    if (rate >= 60) {
      rate -= 30;
      frameRate(rate);
    }
  }
  
  
  
  
  
  
}
