Tank t;
int tankX = 0;
int tankY = 50;
int floorH = 100;
int tankW;
int tankH;
ArrayList<food> f;


int SALMON = 1;
int STARFISH = 2;
int CRAB = 3;
int CLOWNFISH = 4;


void setup() {
  size(800, 600);
  tankW = width;
  tankH = height - 50;
  t = new Tank(tankX, tankY, tankW, tankH, floorH);
  t.display();
  frameRate(60);
  f = new ArrayList<food>();
}//setup


void draw() {
  background(150);
  t.moveAnimals();
  t.display();
  t.runningDeath();

  for (int r =0; r<f.size(); r++) {
    f.get(r).move();
    f.get(r).display();
  }
}

void mouseClicked() {
  t.addAnimal(mouseX, mouseY, 0);
}


void keyPressed() {
  if (key == '1') {
    t.addAnimal(mouseX, mouseY, 1);
  } else if (key == '2') {
    t.addAnimal(mouseX, mouseY, 2);
  } else if (key == '3') {
    t.addAnimal(mouseX, mouseY, 3);
  } else if (key == '4') {
    t.addAnimal(mouseX, mouseY, 4);
    } else if (key == 'f') {
    f.add(new food(mouseX, mouseY));
  }

}





//Tank t;
//int tankX = 0;
//int tankY = 50;
//int floorH = 100;
//int tankW;
//int tankH;

//int STARFISH = 0;
//int CLOWNFISH = 1;
//int CRAB = 2;
//int SALMON = 3;

//ArrayList<Food> foods;

//void setup() {
//  size(600, 600);
//  tankW = width;
//  tankH = height - 50;
//  t = new Tank(tankX, tankY, tankW, tankH, floorH);
//  t.display();
//  frameRate(60);
//  foods = new ArrayList<Food>();
//}//setup

//void draw() {
//  background(150);
//  t.moveAnimals();
//  t.display();
//  t.survive();

//  for (int i = 0; i < foods.size(); i++) {
//    foods.get(i).display();
//  }
//}

//void mouseClicked() {
//  t.addAnimal(mouseX, mouseY, -1);
//}

//void keyPressed() {
//  if (key == '1') {
//    t.addAnimal(mouseX, mouseY, 0);
//  } else if (key == '2') {
//    t.addAnimal(mouseX, mouseY, 1);
//  } else if (key == '3') {
//    t.addAnimal(mouseX, mouseY, 2);
//  } else if (key == '4') {
//    t.addAnimal(mouseX, mouseY, 3);
//  } else if (key == 'f') {
//    foods.add(new Food(mouseX, mouseY));
//  } else if (key == 'z') {
//    t.famine();
//  } else if (key == 'x') {
//    t.printSize();
//  }
//}
