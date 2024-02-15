class Crab extends Animal {
  boolean hitFloorYet = false;
  Crab(int x, int y, int sx, int sy) {
    super(x, y, sx, sy);
    v.y = 1;
    img = loadImage("Crab.png");
  }
  
  void setSpeed() {
    v.mult(int(random(1, 3)) * 0.5);
  }
 
  void collision() {
    if (position.x >= width - size.x || position.x <= 0) {
      v.x *= -1;
    }
    if (hitFloorYet && position.y < height - floorH) {
      v.y *= -1;
    }
    if (position.y > height - size.y)    {
      hitFloorYet = true;
      v.y *= -1;
    }
  }
}
