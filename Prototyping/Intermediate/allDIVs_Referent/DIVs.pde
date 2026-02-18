/* rect(X, Y, Width, Height); //From debugger and online documentation
 Note: the debugger expects rectangles to have float or double type variables
 Using Ratios measured by ruler
 */
//
//Global Variables
int numberOfDIVs = 1;
int numberOfParameters = 4; //Review from debugger
float divs[] = new float[numberOfDIVs*numberOfParameters];
//
void divs() {
  //
  // Primitive Style Reading, note float-arithmetic requiring casting
  int i = 0;
  divs[i] = appWidth*1/4 ;
  i++;
  divs[i] = appHeight*1/4 ; //i++ fails in array
  i++;
  divs[i] = appWidth*1/2 ;
  float referent = divs[i] / 13;
  i++;
  divs[i] = appHeight*1/2 ;
  i++;
  
  
  //println(divs.length);
  //println(i, appWidth, appHeight); 
  //println(i, divs[i]);
  
  
  
  println( "Referent:", referent, i );
  //divs[i++] = appWidth - referent;
  //divs[i++] = 0 ;
  //divs[i++] = referent ;
  //divs[i++] = referent ;
  
  printArray(divs); //Inspect using printArray, println uses concatenation as a ERROR Inspection
  for ( int j=0; j<divs.length; j+=4 ) {
    rectDIV(divs[j], divs[j+1], divs[j+2], divs[j+3]);
    println("Here"); 
  }//End DIVs FOR
  
  /*
  divs[0] = appWidth * referent ;
   divs[1] = appHeight * referent ;
   divs[2] = appWidth * referent ;
   divs[3] = appHeight * referent ;
   */
  

  //
  /* Array Style Reading & DIV Verification
   float paperHeight = 216.0;
   float paperWidth = 279.0;
   float baseNumber = 54.0;
   float iterationStart = 16.0;
   int interation1 = 3; //Note: does not affect float-arithmetic
   int interation2 = 2;
   for (int i=0; i<divs.length; i+=4) {
   divs[i+1] = appHeight * baseNumber/paperHeight; //Base Number //ERROR: casting
   divs[i+interation1] = appHeight * (baseNumber + (iterationStart*interation1) ) /paperHeight; //102=54+(3*16)
   divs[i] = appWidth * (baseNumber+iterationStart) /paperWidth; //Awkward DIV, must rename all Mr. Mercer's Variables // 70=54+16
   divs[i+interation2] = appWidth * (baseNumber + (iterationStart * (interation1+interation2 ) ) ) /paperWidth ; //102=54+(5*16)
   //
   rectDIV(divs[i], divs[i+1], divs[i+2], divs[i+3]);
   }//End Reading DIVs
   //printArray(divs); //Inspect using printArray, println uses concatenation as a ERROR Inspection
   */
}//End DIVs
//
void rectDIV(float x, float y, float w, float h) {
  //DIVs: dividing out the CANVAS in non-overlapping sections
  rect(x, y, w, h);
}//End Rectangle Code
//
//End DIVs
