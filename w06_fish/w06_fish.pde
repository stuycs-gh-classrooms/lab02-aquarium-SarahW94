Tank t;
int tankX = 0;
int tankY = 50;
int floorH = 100;
int tankW;
int tankH;

int CRABS = 0; 
int SALMON = 1; 
int STARFISH = 2; 
int CLOWNFISH = 3; 

void setup() {
  size(800, 600);
  tankW = width;
  tankH = height - 50;
  t = new Tank(tankX, tankY, tankW, tankH, floorH);
  t.display();
}//setup


void draw() {
  background(150);
  t.moveAnimals();
  t.display();
}

void mouseClicked() {
  t.addAnimal(mouseX, mouseY);
}

void keyPressed() {
  if (key == '0') {
    t.addAnimal(mouseX, mouseY, 0);
  } else if (key == '1') {
    t.addAnimal(mouseX, mouseY, 1);
  } else if (key == '2') {
    t.addAnimal(mouseX, mouseY, 2);
  }
  else if (key == '3') {
    t.addAnimal(mouseX, mouseY, 3);
  }
}
