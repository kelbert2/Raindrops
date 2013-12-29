class Timer {
  Timer() {
  }
  void display() {
    stroke(40, 205, 205);
    textSize(20);
    textAlign(CENTER);
    text("Time: " + millis(), 75, 50);
    textSize(15);
    if (millis() >= 150000) {
      text("oh would you look at the time", 100, 100);
    }
  }
}
