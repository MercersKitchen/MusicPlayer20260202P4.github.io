/* File Loading for
 - Image Files
 - Note: Music and Images match indices 1:1
 - Different Folders
 - Mixing Global Variables & Local Variables
 */
int numberOfFiles = 0; //Best Practice
int currentFile = numberOfFiles - numberOfFiles; //ZERO
//
PImage[] imagesPlayList;
//
void fileLoading() {
  String upArrow = ".."; //2x
  String open = "/";
  String dependanciesFolder = "Dependancies"; //Relative Pathway
  String imagesFolder = "Images"; //Relative Pathway
  String imagesDirectory = sketchPath() + open + upArrow + open + upArrow + open + dependanciesFolder + open +imagesFolder + open; //Hardcoded Folder Design
  ErrorCheck("Inspection, Images Directory:", imagesDirectory);
  //
  //currentSong variable controls Music and Image to CANVAS
  fileReading(imagesDirectory); //Sets Music Variables, used for images
} //End File Loading
//
void fileReading(String pathway) {
  File directory = new File(pathway); //Uses Java Library to create class (variables & code)
  //File[] fileNames local & used for both music and images
  File[] fileNames = directory.listFiles(); //Uses built in class to list all files
  printArray(fileNames);
  //String[] files local and used for both music and images
  String[] files = new String[fileNames.length];
  int i=0;
  if ( fileNames != null ) {
    for ( File file : fileNames ) { //FOR EACH Loop, creates local class
      files[i] = pathway + file.getName(); //print fileNames.getName() Object to String
      //Note: getName() is built in code
      i++; //iteration necessary here, not in regular FOR
    }
  } else {
    ErrorCheck("See fileReaeding(String pathway), fileNames==NULL");
  }
  if (numberOfFiles==0) numberOfFiles = files.length;; //Global Used for both music and images, populated once.
  imageLoading( files );
} //End File Reading Loading
//
void imageLoading(String[] files) {
  imagesPlayList = new PImage[numberOfFiles]; //sets the array length
  int fileNumber=0;
  while ( fileNumber < numberOfFiles ) {
    imagesPlayList[ fileNumber ] = loadImage( files[ fileNumber ] );
    fileNumber++; //functions similar to FOR
  }
} //End Image Loading
//
//End SubProgram File Loading
