class Levels {
  int number;
  int bg;
  Levels(int l) {

    int l = number; 

    PImage a = loadImage("storm_clouds_over_the_ocean.jpg");
    PImage b = loadImage("ocean-storm-clouds.jpg");
    PImage c = loadImage("East_caost_clouds.jpeg");
  }
  void display() {
    background(bg);
    if (number = 1) {
      bg=a;
    }
    if (number =2) {
      bg=c;
    }
    if (number = 3) {
      bg=d;
    }
  }
}
