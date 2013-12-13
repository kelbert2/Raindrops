class StartScreen {
  int bg;
  int x, y;
  float r;

  //PImage 0;
 // ArrayList waves = new ArrayList();
  int trans = 50;
  PVector loc;
  StartScreen() {
    //0 = loadImage("Rainy_Ripples.jpeg");
    smooth();
    loc = new PVector(pmouseX, pmouseY);
    r= 1;
   
  }

  void display() {
    background(24, 35, 95);
    text(millis(), width-50, 50);
  }
  void update() {
    noStroke();
    fill(14, 25, 85, trans);
    ellipseMode(CENTER);
    if(mousePressed){
    ellipse(loc.x, loc.y, r, r);
    r++;
    if (r >= 50 && trans > 0) { 
      trans--;
      //ellipse(x, y, r, r);
    }
    }
  }
//  void mousePressed() {
//    //Create a new Wave
//    //and Add it to the ArrayList
//    waves.add(w);
//    for (int i = 0; i < waves.size(); i ++) {
//      //Run the Wave methods
//      waves.get(i).update();
//      waves.get(i).display();
//    }
//  }
}

