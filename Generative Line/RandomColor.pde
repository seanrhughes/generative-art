public class RandomColor {
  public float r;
  public float g;
  public float b;
  
  public RandomColor() {
    this.r = random(256);
    this.g = random(256);
    this.b = random(256);
  }
  
  public void refresh() {
    this.r = random(256);
    this.g = random(256);
    this.b = random(256);
  }
}
