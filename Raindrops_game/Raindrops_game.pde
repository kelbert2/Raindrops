Catcher bucket;
Shark fish;
int index = 1;
int timeChange, currentTime, oldTime;
int level = 0;
int amount = 5; //for Start_Screen and Raindrops
Raindrops[] drop = new Raindrops[amount];
Timer time;
StartScreen ss;
boolean run;
void setup() {
  size(500, 500);
  for   ( int i = 0; i < amount; i++) {
    drop[i] = new Raindrops();
  }
  bucket = new Catcher();
  fish = new Shark(); //to swim by in the rising water as droplets miss when Game Over
  time = new Timer();
  ss = new StartScreen();
  run = false;
}
void draw() {
  if (run == true) {
    background(170, 230, 245);
    currentTime =millis();
    timeChange = currentTime - oldTime;
    if (timeChange >= 5000) {
      oldTime = currentTime;
      if (index < drop.length) {
        index++;
      }
    }
    for (int i = 0; i < index; i++) {
      drop[i].fall();
      drop[i].display();
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
      } 
  else {
    ss.display();

  }
}
void keyPressed(){
  run = !run;
}

