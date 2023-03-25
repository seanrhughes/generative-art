public class NumberGenerator {
  public int r;
  public int g;
  public int b;
  
  public NumberGenerator() {
    this.r = (int)random(256);
    this.g = (int)random(256);
    this.b = (int)random(256);
  }
  
  public void refreshNumbers() {
    this.r = (int)random(256);
    this.g = (int)random(256);
    this.b = (int)random(256);
  }
}
