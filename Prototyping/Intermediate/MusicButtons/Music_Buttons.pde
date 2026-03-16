/* Note:
 -
 */
//Global Variables'
int randomButtonY, randomButtonDimension, buttonY, buttonWidth, numberOfButtons=12;
float[] musicButtonDivX = new float[numberOfButtons];
//
void populationBuild() {
  //Population Building
  buttonWidth = appWidth/13; //Number of Buttons in a Row + 2xPadding
  buttonY = appHeight*3/5; //Most Buttons
  int randomButtonX = 0;
  randomButtonY = 0;
  randomButtonDimension = appHeight*1/20; //Changed to SQUARE
  //musicButtonDivX
  musicButtonDivX[0] = randomButtonX;
  for ( int i=1; i<musicButtonDivX.length; i++ ) {
    musicButtonDivX[i] = buttonWidth*i;
  }
  //
}//End Population Build
//
void drawMusicDivs( float x, float y, float d ) {
  square( x, y, d);
}//End Music DIVs
void drawMusicDivs( float[] x, float y, float d ) {
  for ( int i=1; i<musicButtonDivX.length; i++ ) {
    square( x[i], y, d);
  }
}//End Music DIVs
//
void musicSymbol( int index, float divX, float divY, float divDimension ) { //index from X-Var, musicButtonDivX
}//End Music Symbols
//
//End Subprogram Music Buttons
