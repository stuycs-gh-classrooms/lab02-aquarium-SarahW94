class Food {
  int nourishment;
  PVector pos;

  Food(int x, int y){
    pos = new PVector(x,y);
    nourishment = int(random(5, 10));
  }
  
  void display(){
  fill(255,0,255); 
  circle(pos.x, pos.y, 30);
  }
}
