class Timer {
  Timer() {
  }
  void display() {
    stroke(40, 205, 205);
    textSize(20);
    textAlign(CENTER);
    text("Time: " + millis(), 75, 50);
    textSize(15);
    textAlign(CORNER);
    if (millis() >= 150000) {
      text("oh would you look at the time", 25, 75);
    }
    textSize(10);
    textAlign(CORNER);
    if (millis() >= 200000) {
      text("Tick tock goes the clock \n And what now shall we play?", 100, 100);
    }
  }
}
