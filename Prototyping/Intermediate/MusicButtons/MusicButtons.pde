/* Music Buttons
 */
//
//Global Variables
int appWidth, appHeight;

//
void setup() {
  fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;
  //
  populationBuild();
  drawMusicDivs( musicButtonDivX[0], randomButtonY, randomButtonDimension);
  drawMusicDivs( musicButtonDivX, buttonY, buttonWidth );
  //
}//End Setup
//
void draw() {
}//End Draw
//
void mousePressed() {
}//End Mouse Pressed
//
void keyPressed() {
} //End Key Pressed
//
//End MAIN
