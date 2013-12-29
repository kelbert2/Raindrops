//working
class Levels {
  int number;
  PImage bg, a, b, c;
  Levels(int l) {

    l = number; 

    a = loadImage("storm_clouds_over_the_ocean.jpg");
    b = loadImage("ocean-storm-clouds.jpg");
    c = loadImage("East_caost_clouds.jpeg");
  }
  void display() {
    background(bg);
    if (number == 1) {
      bg=a;
    }
    if (number ==2) {
      bg=b;
    }
    if (number == 3) {
      bg=c;
    }
  }
}

