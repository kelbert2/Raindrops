color c = color(150, 0, 0);
int oldTime;
//int timeChange, currentTime;
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
  currentTime = millis();
  if (millis()- oldTime > 3000){
    ellipse(random(width),random(height),10,10);
    oldTime = millis();
  }
//  timeChange = currentTime - oldTime;
//  if (timeChange%3 == 0){
//    ellipse(random(width),random(height),10,10);
  //}
}

