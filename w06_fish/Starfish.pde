class Starfish extends Animal {
  int startTime;
  Starfish(int x, int y, int sx, int sy, int sp) {
    super(x, y, sx, sy, sp);
    img = loadImage("Starfish.png");
    startTime = millis();
  }

  void setSpeed() {
    v = new PVector((int(random(1, 3))), int(random(1, 3)));
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
}
