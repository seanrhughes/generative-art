public class Tile {
  public int orientation;
  public int type;
  public float size;
  public float x;
  public float y;
  
  public Tile(float x, float y, float size, int orientation, int type) {
    this.x = x;
    this.y = y;
    this.size = size;
    this.orientation = orientation;
    this.type = type;
  }
  
  public void drawTile() {
    switch(type) {
      case(0): //straight tile
        rect(x, y + (size / 4), size, size / 2);
    }
  }
}
