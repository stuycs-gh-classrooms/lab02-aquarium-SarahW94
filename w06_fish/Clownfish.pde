class Clownfish extends Animal {
  int startTime;
  Clownfish(int x, int y, int sx, int sy, int sp) {
    super(x, y, sx, sy, sp);
    startTime = millis();
    img = loadImage("clownfish.png");
  }
  
   void speed(){
    v = new PVector((int(random(2, 10))), int(random(2, 5)));
}

  void die() {
    for (int i = 0; i<t.a.size(); i++) {
      if (t.a.get(i).species == 2) {
        if (millis() - startTime >= 60000) { //If it lasts longer than 60 secs, it dies.
          t.removeAnimal(this);
        }
      }
    }
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
