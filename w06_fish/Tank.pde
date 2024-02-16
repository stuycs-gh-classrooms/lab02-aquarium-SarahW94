class Tank {
  int xcor;
  int ycor;
  int twidth;
  int theight;
  int floor;
  int species;
  PImage img = loadImage("https://media.istockphoto.com/id/672054060/photo/underwater-scene-with-bubbles-and-sunbeams-3d-illustration.jpg?s=612x612&w=0&k=20&c=nYO68AWp8QZpfrSV9QKRxb5EcXK8k7aDswiV1y0BOak=");
  ArrayList<Animal> a = new ArrayList<Animal>();


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

  void removeAnimal(Animal animal) {
    a.remove(animal);
  }

  void runningDeath() {
    for (int r =0; r<a.size(); r++) {
      Animal an= a.get(r);
      an.die();
    }
  }

  void addAnimal(int x, int y, int species) {
    if (species == 0) {
      species = int(random(1, 5));
    }
    if (species == STARFISH) {
      a.add(new Starfish(x, y, 50, 50, species));
    } else if (species == CLOWNFISH) {
      a.add(new Clownfish(x, y, 50, 50, species));
    } else if (species == CRAB) {
      a.add(new Crab(x, y, 45, 30, species));
    } else if (species == SALMON) {
      a.add(new Salmon(x, y, 60, 35, species));
    } else {
      a.add(new Animal(x, y, 60, 60, species));
    }
  }
}
