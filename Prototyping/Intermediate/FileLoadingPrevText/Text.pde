color purpleInk = #2C08FF; //AP MiniLesson on bit, 8-bit or byte (grey scale, 256), colour
color resetInk = #FFFFFF; //White
//
void drawingText( PFont f, float fs, String string, float x, float y, float w, float h, int xAlign, int yAlign, color ink ) {

  fill(ink); //Ink, hexidecimal copied from Color Selector
  //Grey Scale 0-255

  textAlign (xAlign, yAlign); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]





  textFont(f, fs); //must include textSize() before text() & textWidth()
  text( string, x, y, w, h );
  fill(resetInk);
} //End Drawing Text
//
void fontSteup() {
  /*Fonts from OS
   println("Start of Console"); //ERROR: in case CONSOLE Memory not enough
   String[] fontList = PFont.list(); //To list all fonts available on system
   printArray(fontList); //For listing all possible fonts to choose, then createFont
   //Spelling Counts and must compare CONSOLE v Tools / Create Font / Create Font Spelling
   //Tools / Create Font / Find Font / Do Not Press "OK", known conflict between loadFont() and createFont()
   */
  PFont font; //Font Varaible Name, able to have more than one Font
  String harrington = "Harrington"; //Spelling of the Font Matters, see PFont.list() v Create Font above
  // See Procedure Below
  //font = createFont(harrington, fontSize1);
}//End Setup Loading
//
void fontSize() {
  //See Case Study, Count DIVs that require Strings: 6
  float[] fontSize = new float[6];
  //Note: must use FOR to read-in array, FOR-Each to Write-Out
  for ( int i=0; i<fontSize.length; i++  ) {
    fontSize[i] = appHeight;
  }
  ErrorCheck("Font Size Loading", fontSize);
}//End Font Size
