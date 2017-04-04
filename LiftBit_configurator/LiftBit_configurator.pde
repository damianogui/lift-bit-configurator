
//---------------------------------PIN SETTINGS
float radius = 80;
int base= 30;
float pinSizeX = 161;
float pinSizeY = 215;
//float pinSpeed = 0.05; //Pin movement real speed (cm/sec)*30
float pinSpeed = 2;
float perspShift;
float maxElevation= 100;
String selectedColor = "blue";
int selectedCol;
int selectedRow;
int hoverCol;
int hoverRow;

//---------------------------------IMAGES
PImage background2;
PImage cushion;
PImage cushionYellow;
PImage cushionPink;
PImage cushionBlue;
PImage legs;
PImage noPin;
PImage selectedCushion;
PImage hoverCushion;
PImage noPinSelected;
PImage cushionInRange;
PImage check;
PImage menu_open;
PImage menu_close;
PImage mobile_placeholder;

//---------------------------------METHODS
boolean dragging;
float dragPoint;

//---------------------------------UI STYLE
color mint = color(52,224,189);
color grey = color(236,236,236);

//----------------------------------GRID SETTINGS
int columns = 10;
int rows = 18;
Pin[][] pins = new Pin[10][18];
int gridMode =1;
float Xdistance = radius*1.54; //horizontal distance between the pins
float Ydistance = radius/3; // vertical distance between the pins
float shift = radius*0.8; // shift of any odd line to match the exagon grid
//MARGINS TO SET THE GRID AT THE CENTRE OF THE SCREEN
float Xmargin = window.innerWidth/4;
float Xmargin = 400;
float Ymargin = 200;

//----------------------------------CONFIGURATION

String currentConfiguration = new String();
Table configuration;
int currentConfigurationNumber;
int range = 3;

//----------------------------------KEYBOARD
Boolean ALTPressed = false;
Boolean CTRLPressed = false;
Boolean writePNG = false;


void setup() {

  //size(1680,820, P2D); //-----------for running in java
  size(window.innerWidth, window.innerHeight, P2D); //---------------or running in js
  rectMode(CENTER);
  imageMode(CENTER);
  
  //--------------------------------------------Environment
  background(255);
  background2 = loadImage("background2.jpg");
  textMode(SCREEN);
  textFont(createFont("Decima",40));
  stroke(0);
  frameRate(30);
  smooth();
  
  //colors
  cushion = loadImage("cushion.png");
  cushionYellow = loadImage("cushionYellow.png");
  cushionPink = loadImage("cushionPink.png");
  cushionBlue = loadImage("cushionBlue.png");
  
  //pin images
  legs = loadImage("legs2_mod.png");
  noPin = loadImage("noPin.png");
  noPinSelected = loadImage("noPinSelected.png");
  selectedCushion = loadImage("selectedCushion.png");
  hoverCushion = loadImage("hoverCushion.png");
  cushionInRange = loadImage("cushionInRange.png");
  check = loadImage("check.png");
  menu_open = loadImage("menu_open.png");
  menu_close = loadImage("menu_close.png");
  mobile_placeholder = loadImage("mobile_placeholder.png");

  //CONFIGURATIONS
  //loadTable();

  //CREATE ALL THE PINS!!!
  for (int row = 0; row < rows; row++) {
    for (int col = 0; col < columns; col++) {
      
      if (row%2 == 0) {
        pins[col][row] = new Pin(col, row, Xmargin+col*Xdistance, Ymargin+row*Ydistance, 0, 0, false, true, false, false, "green");
      } else {
        pins[col][row] = new Pin(col, row, Xmargin+col*Xdistance+shift, Ymargin+row*Ydistance, 0, 0, false, true, false, false, "green");
      }
    }
  }
  
  //Read all the configurations in the Data folder
  //searchFiles();
  
  //installation(); //SET MOVABLE/PRESENT PINS
  //configuration = loadTable("newConfigurations/00 - Blank.csv");
  //readTable (); //SET ALL TO ELEVATION 0
}

void draw() {
  //----------------ENVIRONMENT
  textSize(12);
  image(background2,width/2,height/2,width,height);
  
  //----------------CONTROL
  if (dragging == false) {
  dragPoint = mouseY;
  }

    //DISPLAY AND ACTIVATE ALL THE PINS !!!
    
  for (int row = 0; row < rows; row++) {
    for (int col = 0; col < columns; col++) {
      pins[col][row].interact();
      pins[col][row].display();
      //pins[col][row].number();
      pins[col][row].animate();
      //pins[col][row].installationSetup();
    }
  }

  //ANIMATIONS
  if (keyPressed && key == 'e'){
    empty(); //-------------empty the whole grid
  }
  
    if (keyPressed && key == 'f'){ 
    full(); //-----------fill the whole grid
  }
   if (keyPressed && key == 'd'){
    allDown();
  }
     if (keyPressed && key == 'u'){
    allUp();
  }
  
  if (keyPressed && key == 'r'){
    makeRandom();
  }
  if (key == 'w'){
    currentConfiguration= "Wave";
  }
  if (currentConfiguration.equals("Wave")){
    makeWave();
  }
  
  if (keyPressed && key == 'h'){
    makeHill();
  }
  
    if (keyPressed && key == 'v'){
    makeValley();
  } 

  //if (keyPressed && key >= '0' && key <= '9' && ALTPressed){
    //range = Character.digit(key, 10);
  //}

if (writePNG == false){
  makeUI(); //-------------------draw the UI
}

if (writePNG == true){
  saveFrame("myConfiguration.png");
}

//-------mobile placeholder

if (window.innerWidth < 743){
  image(mobile_placeholder,width/2,height/2);
}
  
}