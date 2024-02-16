class Crab extends Animal {

  Crab(int x, int y, int sx, int sy, int sp) {
    super(x, y, sx, sy, sp);
    img = loadImage("Crab.png");
  }
  
   void speed(){
    v = new PVector((int(random(4, 8))), int(random(1, 3)));
}

  void move() {
    if (position.x >= width - size.x  ||
      position.x <= 0) {
      v.x*= -1;
    }
    if (position.y >= height - size.y ||
      position.y <= height-50) {
      v.y*= -1;
    }
    
    position.x+= v.x;
    position.y+= v.y;
  }
}
