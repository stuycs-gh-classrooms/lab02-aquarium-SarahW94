class Food {
  int nourishment;
  PVector pos;
  PVector v; 

  Food(int x, int y){
    pos = new PVector(x,y);
    nourishment = int(random(5, 10));
    v = new PVector(int(random(1,2)), int(random(1,2)));
  }
  
  void move(){
      if (pos.x >= width - nourishment/2 ||
      pos.x <= nourishment/2) {
      v.x*= -1;
    }
    if (pos.y >= height - nourishment/2 -floorH ||
      pos.y <= nourishment/2+floorH) {
      v.y*= -1;
    }
    pos.x+= v.x;
    pos.y+= v.y;
  }

  
  void display(){
  fill(255,0,255); 
  circle(pos.x, pos.y, nourishment);
  }
}
