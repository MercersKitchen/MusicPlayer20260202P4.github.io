color purpleInk = #2C08FF; //AP MiniLesson on bit, 8-bit or byte (grey scale, 256), colour
color resetInk = #FFFFFF; //White
float[] fontSize;
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
  // See fontSizeSetup(){} Below
  fontSizeSetup();
  font = createFont(harrington, fontSize[0]); //Note: all fontSize[i] = appHeight
  //
  //Aspect Ratio for Harrington: values known from text experiment
  float fontSizeHarrington = 83; //Default fontSize for ~100%
  float divHeightHarrington = 108; //Key:Value, value=120
  float harringtonAspectRatio = fontSizeHarrington / divHeightHarrington; //#<1
  for ( int i=4; i<divs.length; i++) { //See DIVs
    //divs[2,3,12,13,15,16]
    if ( i%4==2 && ( int(i/4)==1 || int(i/4)==2 || int(i/4)==11 || int(i/4)==12 || int(i/4)==14 || int(i/4)==15 ) ) {
      println(i, divs[i]);
      float a = divs[i]*harringtonAspectRatio;
      divs[i] = a;
      loopFontSize(divs[i]*harringtonAspectRatio, i);
      ErrorCheck("Font Size Adjustment", divs[i]*harringtonAspectRatio, i);
      println("HERE", i, divs[i], divs[i]*harringtonAspectRatio);
    }
  }
  ErrorCheck("Font Size Adjustment", fontSize);
  //
  //Note
  //RECT(#) && RECT(#)+3
  //fontSize1 = songTitleDivHeight * harringtonAspectRatio;
  //fontSize2 = messageDIV_Height * harringtonAspectRatio;
  //fontSize3 = quitHeight * harringtonAspectRatio;
}//End Setup Loading
//
void fontSizeSetup() {
  //See Case Study, Count DIVs that require Strings: 6
  fontSize = new float[divs.length]; //# of Text-DIVs
  //Note: must use FOR to read-in array, FOR-Each to Write-Out
  loopFontSize(appHeight, 0);
  ErrorCheck("Font Size Loading", fontSize);
}//End Font Size
//
void loopFontSize(float a, int b) {
  /*FOR Loop doesn't work for specific rewriting of array in binary identifiation
   - appHeight triggers intial writing
   - !appHeight triggers change from appHeight based on specific divs[%4==2]
   */
  //First Read-In
  if (a==appHeight) { //divs[appHeight] doesn't exist
    for ( int i=0; i<divs.length; i++  ) {
      fontSize[i] = a;
      ErrorCheck("Loop Font Size, for", i, b);
    }
    ErrorCheck("Loop Font Size, second", a, b);
    fontSize[b] = a;
  }
  //Second Read-in
}//End Loop for FontSize Array
