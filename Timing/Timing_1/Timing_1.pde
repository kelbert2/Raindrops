color c = color(150, 0, 0);
void setup() {
  size(100,100);
}
void draw() {
  background(c);
  if (frameCount%2 == 0) {
    c = color(random(255), random(255), random(255));
  }
  fill(0);
  textAlign(CENTER);
  text(frameCount, width/2, height/2);
}

