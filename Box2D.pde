//Box 2D Physics Engine 
//Quynh Ton DAGD 420 Project 2023 

//Template of switching scenes provided by Vaarun Singireddy
//Make a variable to hold each scene:
Scene1Menu scene1Menu;
SceneHowToPlay sceneHowToPlay;
Scene2Explaination scene2Explaination;


// keep any global state (variables that don't belong to a specific scene) here.
// the keyboard state is global, because every scene can use it:
boolean keyEnter = false;
boolean keySpaceBar =false; 

String spaceMessage = "[space] : Toggle unit circle (on)";
boolean isOnMessage = true;

//Delta Time
float dt, prevTime = 0; // DeltaTime, PreviousTime



PFont font1; //Nunito font 

void setup() {
  size(800, 600);
  switchScene1Menu();
  //switchToScene4Info();
  //switchToScene5Fill();
  //switchToScene6Play();



  //font1 = loadFont("UDDigiKyokashoNP-R-48.vlw");
  //font1 = loadFont("CenturyGothic-100.vlw");
  //font1 = createFont("Nunito-VariableFont_wght.ttf", 12);
  font1 = createFont("Quicksand-Medium.ttf", 12);
  textFont(font1);
}
void draw() {
  //Updates & Draws the scene as replacement on screen 
  if (scene1Menu != null) {
    scene1Menu.update();
    if (scene1Menu != null) scene1Menu.draw(); // this extra if statement exists because the sceneTitle.update() might result in the scene switching...
  } else if (sceneHowToPlay != null) {
    sceneHowToPlay.update();
    if (sceneHowToPlay != null) sceneHowToPlay.draw();
  } else if (scene2Explaination != null) {
    scene2Explaination.update();
    if (scene2Explaination != null) scene2Explaination.draw();
  } 


 
}
void mousePressed() {
  // tell any active scenes that the mouse was clicked:
  if (scene1Menu != null) scene1Menu.mousePressed();
  else if (sceneHowToPlay != null) sceneHowToPlay.mousePressed();
  else if (scene2Explaination != null) scene2Explaination.mousePressed();

}





void switchScene1Menu() {
  scene1Menu = new Scene1Menu();
  //scene1Menu = null;
  sceneHowToPlay = null;
  scene2Explaination = null;

}
void switchToSceneHowToPlay() {
  sceneHowToPlay = new SceneHowToPlay();
  scene1Menu = null;
  //sceneHowToPlay = null;
  scene2Explaination = null;

}
void switchToScene2Explaination() {
  scene2Explaination = new Scene2Explaination();
  scene1Menu = null;
  sceneHowToPlay = null;
  //scene2Explaination = null;

}








//Button
boolean isMouseOver(int x, int y, int w, int h) {
  if (mouseX >= x && mouseX <= ( x + w ) && mouseY >= y && mouseY <= ( y + h) ) { //When mouse is hovered over
    noStroke();
    fill(255, 100);
    rect(x, y, w, h);
    return true;
  } else { //When mouse is NOT hovered over
    noStroke();
    fill(0);
    rect(x, y, w, h);
    return false;
  }
}

//The long way:
//Next Button(so theres no glow when you click the next button)
boolean next(int x, int y, int w, int h) {//((700, 450, 70, 120))
  if (mouseX >= x && mouseX <= ( x + w ) && mouseY >= y && mouseY <= ( y + h) ) { //When mouse is hovered over
    return true;
  } else { //When mouse is NOT hovered over
    return false;
  }
}

//Back Button
boolean back(int x, int y, int w, int h) { //(30, 450, 70, 120)
  if (mouseX >= x && mouseX <= ( x + w ) && mouseY >= y && mouseY <= ( y + h) ) { //When mouse is hovered over
    return true;
  } else { //When mouse is NOT hovered over
    return false;
  }
}

//Calculates DeltaTime every frame
void calcDeltaTime() {
  float currTime = millis();
  dt = (currTime - prevTime)/1000.0;
  prevTime = currTime;
}

void keyPressed() {
  //println(keyCode);
  if (keyCode == 10) keyEnter = true;
  if (keyCode == 32) {
    keySpaceBar = true;
    isOnMessage =!isOnMessage; //toggles off/on on Scene 3
  }
}
void keyReleased() {
  if (keyCode == 10) keyEnter = false;
  if (keyCode == 32) keySpaceBar = false;
}
