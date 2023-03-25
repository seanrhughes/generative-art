public class Tileset {
  public Point[][] grid;
  
  public Tileset(float gridSize, float tileSize) {
    int divisions = (int)(gridSize / tileSize);
    grid = new Point[divisions][divisions];
    for (int i = 0; i < divisions; i++) {
      for (int j = 0; j < divisions; j++) {
        Point e = new Point(j * tileSize, i * tileSize);
        grid[j][i] = e;
      }
    }
  }
}
