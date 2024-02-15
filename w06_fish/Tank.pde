class Tank {
  int xcor;
  int ycor;
  int twidth;
  int theight;
  int floor;
  int species;
  PImage img = loadImage("https://media.istockphoto.com/id/672054060/photo/underwater-scene-with-bubbles-and-sunbeams-3d-illustration.jpg?s=612x612&w=0&k=20&c=nYO68AWp8QZpfrSV9QKRxb5EcXK8k7aDswiV1y0BOak=");
  ArrayList<Animal> a = new ArrayList();


  Tank(int tx, int ty, int tw, int th, int heightfloor) {
    xcor = tx;
    ycor = ty;
    twidth = tw;
    theight = th;
    floor = heightfloor;
  }

  void display() {
    image(img, xcor, ycor, twidth, theight);
    fill(194, 178, 128);
    rect (xcor, theight, twidth, height+theight);
    for (int r =0; r<a.size(); r++) {
      Animal an= a.get(r);
      an.animal_display();
    }
  }

  void moveAnimals() {
    for (int r =0; r<a.size(); r++) {
      Animal an= a.get(r);
      an.move();
    }
  }
  
  void removeAnimal(int index) {
    a.remove(index);
  }

  void addAnimal(int x, int y, int species) {
    if (y <= height &&
      y >= height-50) {
      a.add(new Crabs(x, y));
    } else {
      a.add(new Salmon(x, y));
    }
  }
}

//  void addAnimal(int mx, int my, int type) {
//    if (type == -1) {
//      type = int(random(4));
//    }
//    if (type == STARFISH) {
//      animals.add(new Starfish(mx, my, 50, 50, type));
//    } else if (type == CLOWNFISH) {
//      animals.add(new Clownfish(mx, my, 50, 50, type));
//    } else if (type == CRAB) {
//      animals.add(new Crab(mx, my, 45, 30, type));
//    } else if (type == SALMON) {
//      animals.add(new Salmon(mx, my, 60, 35, type));
//    } else {
//      animals.add(new Animal(mx, my, 60, 60, type));
//    }
//  }
//-------------------------------------------------------

//class Tank {
//  int tx;
//  int ty;
//  int tw;
//  int th;
//  int fh;
//  ArrayList<Animal> animals;
 
//  Tank(int _tx, int _ty, int _tw, int _th, int _fh) {
//    tx = _tx;
//    ty = _ty;
//    tw = _tw;
//    th = _th;
//    fh = _fh;
//    animals = new ArrayList<Animal>();
//  }
 
//  void display() {
//    noStroke();
//    fill(0, 255, 255);
//    rect(tx, ty, tw, th);
//    fill(245, 245, 220);
//    rect(tx, width - fh, tw, fh);
   
//    for (int i = 0; i < animals.size(); i++) {
//      animals.get(i).display();
//    }
//  }
 
//  void moveAnimals() {
//    for (int i = 0; i < animals.size(); i++) {
//      animals.get(i).move();
//    }
//  }
  
//  void survive() {
//    for (int i = 0; i < animals.size(); i++) {
//      animals.get(i).waysToDie();
//    }
//  }
 
//  void addAnimal(int mx, int my, int type) {
//    if (type == -1) {
//      type = int(random(4));
//    }
//    if (type == STARFISH) {
//      animals.add(new Starfish(mx, my, 50, 50, type));
//    } else if (type == CLOWNFISH) {
//      animals.add(new Clownfish(mx, my, 50, 50, type));
//    } else if (type == CRAB) {
//      animals.add(new Crab(mx, my, 45, 30, type));
//    } else if (type == SALMON) {
//      animals.add(new Salmon(mx, my, 60, 35, type));
//    } else {
//      animals.add(new Animal(mx, my, 60, 60, type));
//    }
//  }
  
//  void removeAnimal(int index) {
//    animals.remove(index);
//  }
  
//  void removeAnimal(Animal ani) {
//    animals.remove(ani);
//  }
  
//  void famine() {
//    for (int i = animals.size() - 1; i >= 0; i--) {
//      animals.remove(i);
//    }
//  }
  
//  void printSize() {
//    println(animals.size());
//  }
//}
