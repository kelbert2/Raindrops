StartScreen ss;
//ArrayList<StartScreen> waves = new ArrayList<StartScreen>();
void setup() {
  size(500, 500);
}
void draw() {
  ss = new StartScreen();
  if (millis() <= 10000) {
    ss.display();
    ss.update();
    
  }
}

