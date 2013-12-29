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
float puddle = 0;  
float puddleheight;
void setup() {
  size(500, 500);
  startover = true;
}
void draw() {
  if (startover == true);{
  for   ( int i = 0; i < amount; i++) {
    drop[i] = new Raindrops();
  }
  bucket = new Catcher();
  fish = new Shark(); //to swim by in the rising water as droplets miss when Game Over
  time = new Timer();
  ss = new StartScreen();
  run = false;
startover = false;  
}
  if (run == true) {
    background(170, 230, 245);
    currentTime =millis();
    timeChange = currentTime - oldTime;
    if (timeChange >= 8000) {
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
    noStroke();
    fill(100, 200, 250, 100); //bucket and shark will show through. tras 20
    rect(0, height-puddle, width, puddle);  //Working: why there are multiple rectangles rising at diff rates, but I like the way it looks, so let's pretend it's intentional
    //each raindrop missed spawns a new rectangle   
    //reset
    if (puddle >= height) {
      puddle = 150;
    }
  } 
  else {
    ss.display();
  }
}
void keyPressed() {
  run = !run;
  if (run) {
    for   ( int i = 0; i < amount; i++) {
      drop[i] = new Raindrops();
    }
  }
}

