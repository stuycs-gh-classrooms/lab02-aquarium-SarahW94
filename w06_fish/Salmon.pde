class Salmon extends Animal {
  
  Salmon(int x, int y, int sx, int sy, int sp) {
    super(x, y, sx, sy, sp);
    img = loadImage("salmon.jpg");}

   void speed(){
    v = new PVector((int(random(4, 5))), int(random(4, 5)));
}
  void move() {
    if (position.x >= width - size.x ||
      position.x <= size.x) {
      v.x*= -1;
    }
    if (position.y >= height - size.y -50 ||
      position.y <= size.y+50) {
      v.y*= -1;
    }
    position.x+= v.x;
    position.y+= v.y;
  }


}
