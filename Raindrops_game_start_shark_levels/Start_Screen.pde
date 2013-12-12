class StartScreen {
  int bg;
  int x, y;
  float r;
  int trans;
  //PImage 0;
  ArrayList circles = new ArrayList();
  StartScreen(){
        //0 = loadImage("Rainy_Ripples.jpeg");
        smooth();
         this.x = x;
    this.y = y;
  }
  void circle(int x, int y, int z){
    ellipse(x, y, z, z);
  }
  void display(){
    background(24,35,95);
    noStroke();
    fill(14,25,85);
    circle(x,y,r);
  }
void mousePressed() {
  if (mousePressed){
    circles.add(new ExpandingCircle(mouseX,mouseY,trans));
   
  }
}
 void update() {
    radius++;
    if (transparencyOn && radius >= 50 && transparency > 0) { transparency--; }
  }
}

