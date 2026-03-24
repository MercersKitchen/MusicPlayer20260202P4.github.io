/* Images in Procedural VOICE


- 



 - Required: reading and writing Arrays with FOR
 - Using int(casting) and modulus
 - Able to use float(terminating decimals) but more difficult
 
 Assignment: using paper or virtual paper, draw a grid and identify the rect()s of your Case Study
 - populate your divs[Array] one line at a time
 - review for patterns of local build variables based on referent repetitions
 
 ** Humans verify rect(), computers see variables
 
 Reminders
 - Libraries add specific functions to ease programming burdon
 - Must add some libraries in the IDE and the code, like Minim
 - Global Varaibles on harddrive used throuhgout the program sections
 
 
 - Once setup() is done, draw() starts looping
 - Can temporarily pause draw() with noLoop() & loop() to wait (behind booleans or interactions)
 - Note: delay() will stop the program for a specified time
 
 - Reading Code the cursor & braces
 
 */
//
//Library - Minim
import java.io.File;
//
//Global Variables
int appWidth, appHeight;
Boolean musicGUI=false;

//

void setup() {
  //println(displayWidth, displayHeight); //Inspection of Variables
  //size(700, 500); //width //height //700, 500
  fullScreen(); //displayWidth //displayHeight
  appWidth = displayWidth; //Best Practice
  appHeight = displayHeight;
  //
  //GUI based on a grid using a referent measure (identifying columns & rows, X&Y)
  divs();
  //ErrorCheck("End Setup Music GUI set:", musicGUI);
  fileLoading();
} //End setup
//
void draw() {
  //
  //Activate Music GUI
  //ErrorCheck("draw() Music GUI set:", musicGUI);
  if ( musicGUI==true ) {
    seeMusicGUI();
  } else {
    background(0);
  }
  seeQuitMusicButton();
  //
} //End draw
//
void mousePressed() {
  //ERROR Check NUM below
  //int num=8; //ERROR Check i%4=0, int(i/4)=3, num=8
  //println(divs[num], divs[num+1], divs[num+2], divs[num+3]);
  //
  //mouseX>divs[num] && mouseX<divs[num]+divs[num+2] && mouseY>divs[num+1] && mouseY<divs[num+1]+divs[num+3]
  //CAUTION: IF Statements will execute each time
  //Note: easily used with COPY & PASTE
  int num=4;
  if ( mouseReturn (num) ) exit();
  num=8;
  if ( mouseReturn (num) ) musicGUI = varSwitch(musicGUI);
} //End Mouse Pressed
//
void keyPressed() {
  //key=='CAP' || key=='LOWER' //Note" Caps Lock
  //key==CODED || keyCode==ESC //Special Keys
  if (key==CODED || keyCode==ESC) exit();
  if (key=='Q' || key=='q') exit();
  if (key=='M' || key=='m') musicGUI = varSwitch(musicGUI);
} //End Key Pressed
Boolean varSwitch(Boolean variable) {
  if ( variable==true ) {
    return variable=false;
  } else {
    return variable=true;
  }
}
Boolean mouseReturn (int num) {
  return mouseX>divs[num] && mouseX<divs[num]+divs[num+2] && mouseY>divs[num+1] && mouseY<divs[num+1]+divs[num+3];
}//End Mouse Return
//
//End MAIN Program
