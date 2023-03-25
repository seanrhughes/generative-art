public class Point {
  public float x;
  public float y;
  float r;
  float g;
  float b;
  
  public Point(float x, float y) {
    this.x = x;
    this.y = y;
    r = random(256);
    g = random(256);
    b = random(256);
  }
  
  public boolean canFit(float size, ArrayList<Point> set) {
    boolean canFit = true;
    for (Point e : set) {
      if (!((this.x >= e.x + size || this.x <= e.x - size) && (this.y >= e.y + size || this.y <= e.y - size))) {
        canFit = false;
      }  
    }
    System.out.println("in function");
    return canFit;
  }
  
  public void set(float x, float y) {
    this.x = x;
    this.y = y;
  }
}
