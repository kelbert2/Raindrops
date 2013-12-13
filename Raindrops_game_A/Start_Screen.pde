class StartScreen {
  int bg;
  int x, y;
  float r;
  //PImage 0;
  ArrayList circles = new ArrayList();
  int trans;
  StartScreen(int x, int y, int transparency) {
    //0 = loadImage("Rainy_Ripples.jpeg");
    smooth();
    this.x = x;
    this.y = y;
    transparency = trans;
  }

  void display() {
    background(24, 35, 95);
    noStroke();
    fill(14, 25, 85,trans);
    ellipse(x, y, r, r);
  }
     
  void mousePressed() {
    if (mousePressed) {
      circles.add(new StartScreen(mouseX, mouseY, 100));
    }
  }
  void update() {
    r++;
    if (r >= 50 && trans > 0) { 
      trans--;
      ellipse(x, y, r, r);
    }
  }
}
