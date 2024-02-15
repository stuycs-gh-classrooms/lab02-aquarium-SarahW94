class Salmon extends Animal {
  PVector v = new PVector((int(random(4, 5))), int(random(4, 5)));

  Salmon(int x, int y, int sx, int sy) {
    super(x,y, sx, sy); 
    img = loadImage("https://media.istockphoto.com/id/1302726697/vector/vector-chinook-salmon-cartoon-illustration.jpg?s=612x612&w=0&k=20&c=mUeHLLwe8NO5ImqI9pzQEKUVG47DfMVwQhTAhXFyYBw=");}


  void move() {
    if (position.x >= width - size.x ||
      position.x <= size.x) {
      v.x*= -1;
    }
    if (position.y >= height - size.y -50 ||
      positiony <= size.y+50) {
      v.y*= -1;
    }
    position.x+= v.x;
    position.y+= v.y;
  }


}
