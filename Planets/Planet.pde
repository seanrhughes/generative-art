public class Planet {
  public float size;
  public float distance;
  public String rotation;
  float degree;
  float x;
  float y;
  float period;
  
  String startMode = (false)?  "centered": "random";
  public Planet(float size, float distance, String rotation, float period) {
    this.size = size;
    this.distance = distance / 2;
    this.rotation = rotation;
    if (startMode == "centered") {
      this.degree = 0;
    } else if (startMode == "random") {
      this.degree = random(360000);
    }
    if (this.rotation.equals("clockwise")) {
      this.x = this.distance * cos(radians(this.degree * (365.26 / period))) + (width / 2);
      this.y = this.distance * sin(radians(this.degree * (365.26 / period))) + (width / 2);
    } else if (this.rotation.equals("counterclockwise")) {
      this.x = this.distance * sin(radians(this.degree * (365.26 / period))) + (width / 2);
      this.y = this.distance * cos(radians(this.degree * (365.26 / period))) + (width / 2);
    }
    this.period = period;
  }
  
  public void displayPlanet() {
    ellipse(x, y, size, size);
  }
  
  public void rotatePlanet() {
    this.degree += 20;
    if (this.rotation.equals("clockwise")) {
      this.x = this.distance * cos(radians(this.degree * (365.26 / period))) + (width / 2);
      this.y = this.distance * sin(radians(this.degree * (365.26 / period))) + (width / 2);
    } else if (this.rotation.equals("counterclockwise")) {
      this.x = this.distance * sin(radians(this.degree * (365.26 / period))) + (width / 2);
      this.y = this.distance * cos(radians(this.degree * (365.26 / period))) + (width / 2);
    }
  }
}
