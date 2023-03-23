class Scene1Menu {
  //Button 1
  int b1x = 400;
  int b1y = 260;
  int b1w = 500;
  int b1h = 80;

  //Button 2
  int b2x = 500;
  int b2y = 360;
  int b2w = 500;
  int b2h = 80;

  //Button 2
  int b3x = 500;
  int b3y = 460;
  int b3w = 500;
  int b3h = 80;



  void update() {
  }


  void draw() {
  }



  void mousePressed() {
    if (isMouseOver(b1x, b1y, b1w, b1h) == true) {
      switchToScene2Explaination();
    }
    if (isMouseOver(b2x, b2y, b2w, b2h) == true) {
      switchToSceneHowToPlay();
    }
    if (isMouseOver(b3x, b3y, b3w, b3h) == true) {
    }
  }
}
