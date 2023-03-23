class SceneHowToPlay {
  int dialogueText;
  int b1x = 500;
  int b1y = 350;
  int b1w = 500;
  int b1h = 80;
  void update() {
  }
  void draw() {
  }
  void mousePressed() {
    if (mouseButton == LEFT) {

      if (isMouseOver(b1x, b1y, b1w, b1h) == true) {
        switchScene1Menu();
      }
    }
  }
}
