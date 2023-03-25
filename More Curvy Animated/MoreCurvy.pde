import java.lang.Math;

float r1 = random(360);
float r12 = random(360);
float r13 = random(360);
float r14 = random(360);
float r15 = random(360);
float r16 = random(360);
float r17 = random(360);
float r18 = random(360);
float r19 = random(360);

float firstX, firstY, firstX2, firstY2, firstX3, firstY3, firstX4, firstY4;
float firstX5, firstY5, firstX6, firstY6, firstX7, firstY7, firstX8, firstY8;
float firstX9, firstY9;

float secondX, secondY, secondX2, secondY2, secondX3, secondY3, secondX4, secondY4;
float secondX5, secondY5, secondX6, secondY6, secondX7, secondY7, secondX8, secondY8;
float secondX9, secondY9;

float x, y, x2, y2, x3, y3, x4, y4, x5, y5, x6, y6, x7, y7, x8, y8, x9, y9;

float speed = 1;

float xSpeed, ySpeed, xSpeed2, ySpeed2, xSpeed3, ySpeed3, xSpeed4, ySpeed4;
float xSpeed5, ySpeed5, xSpeed6, ySpeed6, xSpeed7, ySpeed7, xSpeed8, ySpeed8;
float xSpeed9, ySpeed9;

boolean showGuidelines = true;
boolean showRects = false;

void draw() {
  background(0);
  stroke(255);
  if (showRects) {
    line(0, 0, width - 1, 0);
    line(0, width / 3, width - 1, width / 3);
    line(0, (width * 2) / 3, width - 1, (width * 2) / 3);
    line(0, width - 1, width - 1, width - 1);
    line(0, 0, 0, width - 1);
    line(width / 3, 0, width / 3, width - 1);
    line((2 * width / 3), 0, (2 * width) / 3, width - 1);
    line(width - 1, 0, width - 1, width - 1);
  }
  
  colorMode(RGB, 255);
  
  //first grid
  stroke(57, 255, 20);
  if (x <= firstX && y <= firstY - (width / 6)) {
    xSpeed = speed; 
    ySpeed = 0;
  } else if (x >= secondX && y <= firstY - (width / 6)) {
    xSpeed = 0;
    ySpeed = speed;
  } else if (x >= secondX && y >= secondY + (width / 6)) {
    xSpeed = -1 * speed;
    ySpeed = 0;
  } else if (x <= firstX && y >= secondY + (width / 6)) {
    xSpeed = 0;
    ySpeed = -1 * speed;
  }
  
  x += xSpeed;
  y += ySpeed;
  
  bezier(firstX, firstY, x, y, (width / 6) * cos(radians(frameCount - 1)) + ((firstX + secondX) / 2), (width / 6) * sin(radians(frameCount - 1)) + (firstY), secondX, secondY);
  if (showGuidelines) {
    //circle following rectangular path
    ellipse(x, y, 50, 50);
    //circle following circular path
    ellipse((width / 6) * cos(radians(frameCount - 1)) + ((firstX + secondX) / 2), (width / 6) * sin(radians(frameCount - 1)) + (firstY), 50, 50);
    //circle
    ellipse((firstX + secondX) / 2, firstY, width / 3, width / 3);
  }
  
  // second grid
  stroke(31, 81, 255);
  if (x2 <= firstX2 && y2 <= firstY2 - (width / 6)) {
    xSpeed2 = speed * 0; 
    ySpeed2 = speed * 1;
  } else if (x2 >= secondX2 && y2 <= firstY2 - (width / 6)) {
    xSpeed2 = -1 * speed;
    ySpeed2 = 0 * speed;
  } else if (x2 >= secondX2 && y2 >= secondY2 + (width / 6)) {
    xSpeed2 = 0 * speed;
    ySpeed2 = speed * -1;
  } else if (x2 <= firstX2 && y2 >= secondY2 + (width / 6)) {
    xSpeed2 = 1 * speed;
    ySpeed2 = speed * 0;
  }
  
  x2 += xSpeed2;
  y2 += ySpeed2;
  
  bezier(firstX2, firstY2, x2, y2, (width / 6) * sin(radians(frameCount - 1 + 90)) + ((firstX2 + secondX2) / 2), (width / 6) * cos(radians(frameCount - 1 + 90)) + (firstY2), secondX2, secondY2);
  if (showGuidelines) {
    //circle following rectangular path
    ellipse(x2, y2, 50, 50);
    //circle following circular path
    ellipse((width / 6) * sin(radians(frameCount - 1 + 90)) + ((firstX2 + secondX2) / 2), (width / 6) * cos(radians(frameCount - 1 + 90)) + (firstY2), 50, 50);
    //circle
    ellipse((firstX2 + secondX2) / 2, firstY2, width / 3, width / 3);
  }
  
  // third grid
  stroke(251, 72, 196);
  if (x3 <= firstX3 && y3 <= firstY3 - (width / 6)) {
    xSpeed3 = speed * 0; 
    ySpeed3 = speed * 1;
  } else if (x3 >= secondX3 && y3 <= firstY3 - (width / 6)) {
    xSpeed3 = -1 * speed;
    ySpeed3 = 0 * speed;
  } else if (x3 >= secondX3 && y3 >= secondY3 + (width / 6)) {
    xSpeed3 = 0 * speed;
    ySpeed3 = speed * -1;
  } else if (x3 <= firstX3 && y3 >= secondY3 + (width / 6)) {
    xSpeed3 = 1 * speed;
    ySpeed3 = speed * 0;
  }
  
  x3 += xSpeed3;
  y3 += ySpeed3;
  
  bezier(firstX3, firstY3, x3, y3, (width / 6) * cos(radians(frameCount - 1 + 90)) + ((firstX3 + secondX3) / 2), (width / 6) * sin(radians(frameCount - 1 + 90)) + (firstY3), secondX3, secondY3);
  if (showGuidelines) {
    //circle following rectangular path
    ellipse(x3, y3, 50, 50);
    //circle following circular path
    ellipse((width / 6) * cos(radians(frameCount - 1 + 90)) + ((firstX3 + secondX3) / 2), (width / 6) * sin(radians(frameCount - 1 + 90)) + (firstY3), 50, 50);
    //circle
    ellipse((firstX3 + secondX3) / 2, firstY3, width / 3, width / 3);
  }
  
  //fourth grid
  stroke(ColorPalettes.lightCoral);
  if (x4 <= firstX4 && y4 <= firstY4 - (width / 6)) {
    xSpeed4 = speed; 
    ySpeed4 = 0;
  } else if (x4 >= secondX4 && y4 <= firstY4 - (width / 6)) {
    xSpeed4 = 0;
    ySpeed4 = speed;
  } else if (x4 >= secondX4 && y4 >= secondY4 + (width / 6)) {
    xSpeed4 = -1 * speed;
    ySpeed4 = 0;
  } else if (x4 <= firstX4 && y4 >= secondY4 + (width / 6)) {
    xSpeed4 = 0;
    ySpeed4 = -1 * speed;
  }
  
  x4 += xSpeed4;
  y4 += ySpeed4;
  
  bezier(firstX4, firstY4, x4, y4, (width / 6) * sin(radians(frameCount - 1 + 180)) + ((firstX4 + secondX4) / 2), (width / 6) * cos(radians(frameCount - 1 + 180)) + (firstY4), secondX4, secondY4);
  if (showGuidelines) {
    //circle following rectangular path
    ellipse(x4, y4, 50, 50);
    //circle following circular path
    ellipse((width / 6) * sin(radians(frameCount - 1 + 180)) + ((firstX4 + secondX4) / 2), (width / 6) * cos(radians(frameCount - 1 + 180)) + (firstY4), 50, 50);
    //circle
    ellipse((firstX4 + secondX4) / 2, firstY4, width / 3, width / 3);
  }
  
  //fifth grid
  stroke(ColorPalettes.minionYellow);
  if (x5 <= firstX5 && y5 <= firstY5 - (width / 6)) {
    xSpeed5 = speed * 0; 
    ySpeed5 = speed * 1;
  } else if (x5 >= secondX5 && y5 <= firstY5 - (width / 6)) {
    xSpeed5 = -1 * speed;
    ySpeed5 = 0 * speed;
  } else if (x5 >= secondX5 && y5 >= secondY5 + (width / 6)) {
    xSpeed5 = 0 * speed;
    ySpeed5 = speed * -1;
  } else if (x5 <= firstX5 && y5 >= secondY5 + (width / 6)) {
    xSpeed5 = 1 * speed;
    ySpeed5 = speed * 0;
  }
  
  x5 += xSpeed5;
  y5 += ySpeed5;
  
  bezier(firstX5, firstY5, x5, y5, (width / 6) * sin(radians(frameCount - 1 - 90)) + ((firstX5 + secondX5) / 2), (width / 6) * cos(radians(frameCount - 1 - 90)) + (firstY5), secondX5, secondY5);
  if (showGuidelines) {
    //circle following rectangular path
    ellipse(x5, y5, 50, 50);
    //circle following circular path
    ellipse((width / 6) * sin(radians(frameCount - 1 - 90)) + ((firstX5 + secondX5) / 2), (width / 6) * cos(radians(frameCount - 1 - 90)) + (firstY5), 50, 50);
    //circle
    ellipse((firstX5 + secondX5) / 2, firstY5, width / 3, width / 3);
  }
  
  //sixth grid
  stroke(#B026FF);
   if (x6 <= firstX6 && y6 <= firstY6 - (width / 6)) {
    xSpeed6 = speed; 
    ySpeed6 = 0;
  } else if (x6 >= secondX6 && y6 <= firstY6 - (width / 6)) {
    xSpeed6 = 0;
    ySpeed6 = speed;
  } else if (x6 >= secondX6 && y6 >= secondY6 + (width / 6)) {
    xSpeed6 = -1 * speed;
    ySpeed6 = 0;
  } else if (x6 <= firstX6 && y6 >= secondY6 + (width / 6)) {
    xSpeed6 = 0;
    ySpeed6 = -1 * speed;
  }
  
  x6 += xSpeed6;
  y6 += ySpeed6;
  
  bezier(firstX6, firstY6, x6, y6, (width / 6) * cos(radians(frameCount - 1)) + ((firstX6 + secondX6) / 2), (width / 6) * sin(radians(frameCount - 1)) + (firstY6), secondX6, secondY6);
  if (showGuidelines) {
    //circle following rectangular path
    ellipse(x6, y6, 50, 50);
    //circle following circular path
    ellipse((width / 6) * cos(radians(frameCount - 1)) + ((firstX6 + secondX6) / 2), (width / 6) * sin(radians(frameCount - 1)) + (firstY6), 50, 50);
    //circle
    ellipse((firstX6 + secondX6) / 2, firstY6, width / 3, width / 3);
  }
  
  //seventh grid
  stroke(#15f4ee);
  if (x7 <= firstX7 && y7 <= firstY7 - (width / 6)) {
    xSpeed7 = speed * 0; 
    ySpeed7 = speed * 1;
  } else if (x7 >= secondX7 && y7 <= firstY7 - (width / 6)) {
    xSpeed7 = -1 * speed;
    ySpeed7 = 0 * speed;
  } else if (x7 >= secondX7 && y7 >= secondY7 + (width / 6)) {
    xSpeed7 = 0 * speed;
    ySpeed7 = speed * -1;
  } else if (x7 <= firstX7 && y7 >= secondY7 + (width / 6)) {
    xSpeed7 = 1 * speed;
    ySpeed7 = speed * 0;
  }
  
  x7 += xSpeed7;
  y7 += ySpeed7;
  
  bezier(firstX7, firstY7, x7, y7, (width / 6) * cos(radians(frameCount - 1 - 90)) + ((firstX7 + secondX7) / 2), (width / 6) * sin(radians(frameCount - 1 - 90)) + (firstY7), secondX7, secondY7);
  if (showGuidelines) {
    //circle following rectangular path
    ellipse(x7, y7, 50, 50);
    //circle following circular path
    ellipse((width / 6) * cos(radians(frameCount - 1 - 90)) + ((firstX7 + secondX7) / 2), (width / 6) * sin(radians(frameCount - 1 - 90)) + (firstY7), 50, 50);
    //circle
    ellipse((firstX7 + secondX7) / 2, firstY7, width / 3, width / 3);
  }
  
  //eighth grid
  stroke(#FF5733);
  if (x8 <= firstX8 && y8 <= firstY8 - (width / 6)) {
    xSpeed8 = speed; 
    ySpeed8 = 0;
  } else if (x8 >= secondX8 && y8 <= firstY8 - (width / 6)) {
    xSpeed8 = 0;
    ySpeed8 = speed;
  } else if (x8 >= secondX8 && y8 >= secondY8 + (width / 6)) {
    xSpeed8 = -1 * speed;
    ySpeed8 = 0;
  } else if (x8 <= firstX8 && y8 >= secondY8 + (width / 6)) {
    xSpeed8 = 0;
    ySpeed8 = -1 * speed;
  }
  
  x8 += xSpeed8;
  y8 += ySpeed8;
  
  bezier(firstX8, firstY8, x8, y8, (width / 6) * cos(radians(frameCount - 1 + 90)) + ((firstX8 + secondX8) / 2), (width / 6) * sin(radians(frameCount - 1 + 90)) + (firstY8), secondX8, secondY8);
  if (showGuidelines) {
    //circle following rectangular path
    ellipse(x8, y8, 50, 50);
    //circle following circular path
    ellipse((width / 6) * cos(radians(frameCount - 1 + 90)) + ((firstX8 + secondX8) / 2), (width / 6) * sin(radians(frameCount - 1 + 90)) + (firstY8), 50, 50);
    //circle
    ellipse((firstX8 + secondX8) / 2, firstY8, width / 3, width / 3);
  }
  
  //ninth grid
  stroke(ColorPalettes.seaGreen);
  if (x9 <= firstX9 && y9 <= firstY9 - (width / 6)) {
    xSpeed9 = speed * 0; 
    ySpeed9 = speed * 1;
  } else if (x9 >= secondX9 && y9 <= firstY9 - (width / 6)) {
    xSpeed9 = -1 * speed;
    ySpeed9 = 0 * speed;
  } else if (x9 >= secondX9 && y9 >= secondY9 + (width / 6)) {
    xSpeed9 = 0 * speed;
    ySpeed9 = speed * -1;
  } else if (x9 <= firstX9 && y9 >= secondY9 + (width / 6)) {
    xSpeed9 = 1 * speed;
    ySpeed9 = speed * 0;
  }
  
  x9 += xSpeed9;
  y9 += ySpeed9;
  
  bezier(firstX9, firstY9, x9, y9, (width / 6) * cos(radians(frameCount - 1 - 90)) + ((firstX9 + secondX9) / 2), (width / 6) * sin(radians(frameCount - 1 - 90)) + (firstY9), secondX9, secondY9);
  if (showGuidelines) {
    //circle following rectangular path
    ellipse(x9, y9, 50, 50);
    //circle following circular path
    ellipse((width / 6) * cos(radians(frameCount - 1 - 90)) + ((firstX9 + secondX9) / 2), (width / 6) * sin(radians(frameCount - 1 - 90)) + (firstY9), 50, 50);
    //circle
    ellipse((firstX9 + secondX9) / 2, firstY9, width / 3, width / 3);
  }
  
  colorMode(RGB, 255);

  //text(frameCount, width / 8, height / 8);
  saveFrame("out/screen-####.png");
  if (frameCount == 361) {
    noLoop();
    //bezier(startFirst, endFirst, width * .5, width * .75, (width / 4) * cos(radians(0)) + (width / 2), (width / 4) * sin(radians(0)) + (width / 2), startLast, endLast);
  }
}

 void setup() {
  size(1080, 1080);
  background(255);
  frameRate(40);
  stroke(255);
  strokeWeight(3);
  noFill();
  if(width != 1080) {
    text("width/height != 1080", width / 20, width / 20);
  }
  
  speed = (width == 1080)? 4 : 2;
  
  firstX = 0;
  firstY = width / 6;
  secondX = width / 3;
  secondY = width / 6;
  x = firstX;
  y = firstY;
  xSpeed = speed * 0;
  ySpeed = speed * -1;
  
  firstX2 = width / 3;
  firstY2 = width / 6;
  secondX2 = (2 * width) / 3;
  secondY2 = width / 6;
  x2 = (firstX2 + secondX2) / 2;
  y2 = 0;
  xSpeed2 = speed * -1;
  ySpeed2 = speed * 0;
  
  firstX3 = (2 * width) / 3;
  firstY3 = width / 6;
  secondX3 = width;
  secondY3 = width / 6;
  x3 = secondX3;
  y3 = secondY3;
  xSpeed3 = speed * 0;
  ySpeed3 = speed * -1;
  
  firstX4 = 0;
  firstY4 = width / 2;
  secondX4 = width / 3;
  secondY4 = width / 2;
  x4 = (firstX4 + secondX4) / 2;
  y4 = (2 * width) / 3;
  xSpeed4 = -1 * speed;
  ySpeed4 = 0 * speed;
  
  firstX5 = width / 3;
  firstY5 = width / 2;
  secondX5 = (2 * width) / 3;
  secondY5 = width / 2;
  x5 = secondX5;
  y5 = secondY5;
  xSpeed5 = 0;
  ySpeed5 = -1 * speed;
  
  firstX6 = (2 * width) / 3;
  firstY6 = width / 2;
  secondX6 = width;
  secondY6 = width / 2;
  x6 = firstX6;
  y6 = firstY6;
  xSpeed6  = 0;
  ySpeed6 = -1 * speed;
  
  firstX7 = 0;
  firstY7 = (5 * width) / 6;
  secondX7 = width / 3;
  secondY7 = (5 * width) / 6;
  x7 = (firstX7 + secondX7) / 2;
  y7 = (2 * width) / 3;
  xSpeed7 = -1 * speed;
  ySpeed7 = 0;
  
  firstX8 = width / 3;
  firstY8 = (5 * width) / 6;
  secondX8 = (width * 2) / 3;
  secondY8 = (5 * width) / 6;
  x8 = secondX8;
  y8 = secondY8;
  xSpeed8 = 0;
  ySpeed8 = 1 * speed;
 
  firstX9 = (width * 2) / 3;
  firstY9 = (5 * width) / 6;
  secondX9 = width;
  secondY9 = (5 * width) / 6;
  x9 = firstX9;
  y9 = firstY9;
  xSpeed9 = 0;
  ySpeed9 = 1 * speed;
}
  
void keyPressed() {
  if (key == ' ') {
    String filename = "MoreCurvy, seed " + random(10000) + ".png";
    save(filename);
  }
  
  if (key == 'r') {
    setup();
  }
}
