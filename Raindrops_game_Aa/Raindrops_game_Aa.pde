  float puddleheight;
Catcher bucket;
Shark fish;
int index = 1;
int timeChange = 0;
int currentTime = 0;
int oldTime = 0;
int level = 0;
int amount = 5; //for Start_Screen and Raindrops
Raindrops[] drop = new Raindrops[amount];
Timer time;
StartScreen ss;
boolean run;
void setup() {
  size(500, 500);
  for   ( int i = 0; i < drop.length; i++) {
    drop[i] = new Raindrops();
  }
  bucket = new Catcher(drop);
  fish = new Shark(); //to swim by in the rising water as droplets miss when Game Over
  time = new Timer();
  ss = new StartScreen();
  run = false;
}
void draw() {
  if (run == true){
  //  if (millis() == 0){
  //    ss.display();
  //  }
  //  if (millis()>1000) {
  //    level+=1;
  //  }
  //  if (level == 0) {
  //    background(0);
  //    for (int i=0; i<circles.size(); i++) {
  //      ExpandingCircle ec = (ExpandingCircle) circles.get(i);
  //      ec.update();
  //      ec.display();
  //    }
  //  }
  //else {
  background(170, 230, 245);
  currentTime =millis();
  timeChange = currentTime - oldTime;
  if (timeChange >= 2000) {
    oldTime = currentTime;
    if (index < drop.length) {
      index++;
    }
  }
  for (int i = 0; i < index; i++) {
    drop[i].fall();
    drop[i].display();
    
  }
  for (int i = 0; i < drop.length; i++) {
  drop[i].check(bucket);
    bucket.catchDrop(drop[i]);
    drop[i].GameOver(fish);
  }
  bucket.display();
  bucket.update();
  time.display();
  for (int i = 0; i < index; i++) {
    drop[i].reset();
  }
  //    if (millis() - oldTime == 5000) {
  //      oldTime = millis();
  //      if (index < drop.length) {
  //        index++;
  //      }
  } else {
    ss.display();
  }
  if(keyPressed || mousePressed){
    run = true;
  }
}

