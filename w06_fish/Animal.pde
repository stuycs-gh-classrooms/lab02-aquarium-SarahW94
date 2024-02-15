class Animal {
  PVector position; 
  PVector size;
  color c;
  int yspeed = int(random(1, 3));
  int xspeed = int(random(1, 6));


  Animal(int x, int y, int sx, int sy) {
  position = new PVector(x,y);
  size = new PVector(sx,sy);}

    
void move() {
    if (position.x >= width - size.x ||
        ax <= size/2) {
        xspeed*= -1;
     }
     if (ay >= height - size/2 || 
         ay <= size/2+50) {
         yspeed*= -1;
      }
     ax+= xspeed;
     ay+= yspeed;
  }
  
  
  void animal_display() {
    fill(255,0,0);
    circle(ax, ay, size);
  }
}
