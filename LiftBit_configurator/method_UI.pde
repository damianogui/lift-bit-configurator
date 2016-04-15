/* @pjs font="Decima.otf"; */
//sorry in advance for the spaghettiness of this part...

int boxX=50;
int boxY=50;
int boxMarginY=50;
int boxMarginX=10;
boolean menu = true;

void makeUI () {

//OPEN/CLOSE
if (!menu){
  image(menu_open,boxX+30,25,38,38);
}

if (menu){
  
//BACKGROUND
rectMode(CORNER);
fill(0,80);
noStroke();
rect(boxX,0,300,window.innerHeight); // js-only. Change to 'height' for Java
image(menu_close,boxX+30,25,38,38);
//TITLE
fill(255);
textSize(20);
text("HOW TO USE", boxY+boxMarginX, boxX+boxMarginY);

//LINE
strokeWeight(1);
stroke(255);
line(boxX+boxMarginX,boxY+boxMarginY*1.5,boxX+boxMarginX+280,boxY+boxMarginY*1.5);
noStroke();


//QUICK INSTRUCTIONS
textSize(12);
text("Click anywhere to add a Lift-bit", boxY+boxMarginX, boxX+boxMarginY*2);
text("Press BACKSPACE to remove", boxY+boxMarginX, boxX+boxMarginY*2.5);
text("Hold and drag to change height", boxY+boxMarginX, boxX+boxMarginY*3);

//LINE
strokeWeight(1);
stroke(255);
line(boxX+boxMarginX,boxY+boxMarginY*3.5,boxX+boxMarginX+280,boxY+boxMarginY*3.5);

//------------------------------------------------------------------------------------SWITCH COLOR
textSize(12);
text("Switch color:", boxY+boxMarginX, boxX+boxMarginY*4);

//GREEN
fill(52,224,189);
stroke(255);
if (mouseX>boxY+boxMarginX && mouseX<boxY+boxMarginX+50 && mouseY > boxX+boxMarginY*4.5 && mouseY < boxX+boxMarginY*4.5+50){
  strokeWeight(3);

  if(mousePressed){
    selectedColor="green";
    if(selectedCol != -1){
      pins[selectedCol][selectedRow].myColor="green";
    }
  }
} else {
  strokeWeight(1);
}
ellipse(boxY+boxMarginX+25, boxX+boxMarginY*4.5+25, 40,40);
if (selectedColor.equals("green")){
  imageMode(CORNER);
  image(check,boxY+boxMarginX+15, boxX+boxMarginY*4.5+18,21,15);
  imageMode(CENTER);
}

//YELLOW
fill(217,239,54);
if (mouseX>boxY+boxMarginX+51 && mouseX<boxY+boxMarginX+101 && mouseY > boxX+boxMarginY*4.5 && mouseY < boxX+boxMarginY*4.5+50){
  strokeWeight(3);
  if(mousePressed){
    selectedColor="yellow";
    if(selectedCol != -1){
      pins[selectedCol][selectedRow].myColor="yellow";
    }
  }
} else {
  strokeWeight(1);
}
ellipse(boxY+boxMarginX+51+25, boxX+boxMarginY*4.5+25, 40,40);

if (selectedColor.equals("yellow")){
  imageMode(CORNER);
  image(check,boxY+boxMarginX+66, boxX+boxMarginY*4.5+18,21,15);
  imageMode(CENTER);
}

//PINK
fill(243,77,62);
if (mouseX>boxY+boxMarginX+102 && mouseX<boxY+boxMarginX+152 && mouseY > boxX+boxMarginY*4.5 && mouseY < boxX+boxMarginY*4.5+50){
  strokeWeight(3);
  if(mousePressed){
    selectedColor="pink";
    if(selectedCol != -1){
      pins[selectedCol][selectedRow].myColor="pink";
    }
  }
} else {
  strokeWeight(1);
}
ellipse(boxY+boxMarginX+102+25, boxX+boxMarginY*4.5+25, 40,40);
if (selectedColor.equals("pink")){
  imageMode(CORNER);
  image(check,boxY+boxMarginX+118, boxX+boxMarginY*4.5+18,21,15);
  imageMode(CENTER);
}

//Blue
fill(78,179,247);
if (mouseX>boxY+boxMarginX+153 && mouseX<boxY+boxMarginX+203 && mouseY > boxX+boxMarginY*4.5 && mouseY < boxX+boxMarginY*4.5+50){
  strokeWeight(3);
  if(mousePressed){
    selectedColor="blue";
    if(selectedCol != -1){
     pins[selectedCol][selectedRow].myColor="blue";
    }
  }
} else {
  strokeWeight(1);
}
ellipse(boxY+boxMarginX+153+25, boxX+boxMarginY*4.5+25, 40,40);
if (selectedColor.equals("blue")){
  imageMode(CORNER);
  image(check,boxY+boxMarginX+168, boxX+boxMarginY*4.5+18,21,15);
  imageMode(CENTER);
}

//LINE
strokeWeight(1);
stroke(255);
line(boxX+boxMarginX,boxY+boxMarginY*6,boxX+boxMarginX+280,boxY+boxMarginY*6);

//------------------------------------------------------------------------------------CONFIGURATIONS
fill(255);
textSize(20);
text("EXAMPLES", boxY+boxMarginX, boxX+boxMarginY*7);

//Single Stool
if (mouseX>boxY+boxMarginX && mouseX<boxY+boxMarginX+100 && mouseY > boxX+boxMarginY*7.5 && mouseY < boxX+boxMarginY*7.5+20){
  stroke(255);
  fill(mint);
  if(mousePressed){
    makeStool();
  }
} else {
  stroke(255);
  noFill();
}

rect(boxX+boxMarginX,boxY+boxMarginY*7.5, 130,20);
fill(255);
textSize(12);
text("SINGLE STOOL",boxY+boxMarginX+10,boxX+boxMarginY*7.5+15);


//Simple chair
if (mouseX>boxY+boxMarginX && mouseX<boxY+boxMarginX+100 && mouseY > boxX+boxMarginY*8 && mouseY < boxX+boxMarginY*8+20){
  stroke(255);
  fill(mint);
  if(mousePressed){
    makeChair();
  }
} else {
  noFill();
}

rect(boxX+boxMarginX,boxY+boxMarginY*8, 130,20);
fill(255);
textSize(12);
text("SIMPLE CHAIR",boxY+boxMarginX+10,boxX+boxMarginY*8+15);

//Ziggurat Sofa
if (mouseX>boxY+boxMarginX+110 && mouseX<boxY+boxMarginX+100+110 && mouseY > boxX+boxMarginY*7.5 && mouseY < boxX+boxMarginY*7.5+20){
  stroke(255);
  fill(mint);
  if(mousePressed){
    makeZiggurat();
  }
} else {
  noFill();
}

rect(boxX+boxMarginX+140,boxY+boxMarginY*7.5, 140,20);
fill(255);
textSize(12);
text("ZIGGURAT SOFA",boxY+boxMarginX+10+140,boxX+boxMarginY*7.5+15);

//Chaise Lounge
if (mouseX>boxY+boxMarginX+110 && mouseX<boxY+boxMarginX+100+110 && mouseY > boxX+boxMarginY*8 && mouseY < boxX+boxMarginY*8+20){
  stroke(255);
  fill(mint);
  if(mousePressed){
    makeChaiseLounge();
  }
} else {
  noFill();
}

rect(boxX+boxMarginX+140,boxY+boxMarginY*8, 140,20);
fill(255);
textSize(12);
text("CHAISE LOUNGE",boxY+boxMarginX+10+140,boxX+boxMarginY*8+15);

//Chatting Sofa
if (mouseX>boxY+boxMarginX && mouseX<boxY+boxMarginX+100 && mouseY > boxX+boxMarginY*8.5 && mouseY < boxX+boxMarginY*8.5+20){
  stroke(255);
  fill(mint);
  if(mousePressed){
    makeSofa();
  }
} else {
  noFill();
}

rect(boxX+boxMarginX,boxY+boxMarginY*8.5, 130,20);
fill(255);
textSize(12);
text("CHATTING SOFA",boxY+boxMarginX+10,boxX+boxMarginY*8.5+15);

//Bed
if (mouseX>boxY+boxMarginX+110 && mouseX<boxY+boxMarginX+100+110 && mouseY > boxX+boxMarginY*8.5 && mouseY < boxX+boxMarginY*8.5+20){
  stroke(255);
  fill(mint);
  if(mousePressed){
    makeBed();
  }
} else {
  noFill();
}

rect(boxX+boxMarginX+140,boxY+boxMarginY*8.5, 140,20);
fill(255);
textSize(12);
text("BED",boxY+boxMarginX+10+140,boxX+boxMarginY*8.5+15);

//Disco Sofa
if (mouseX>boxY+boxMarginX && mouseX<boxY+boxMarginX+100 && mouseY > boxX+boxMarginY*9 && mouseY < boxX+boxMarginY*9+20){
  stroke(255);
  fill(mint);
  if(mousePressed){
    makeDiscoSofa();
  }
} else {
  noFill();
}

rect(boxX+boxMarginX,boxY+boxMarginY*9, 130,20);
fill(255);
textSize(12);
text("DISCO SOFA",boxY+boxMarginX+10,boxX+boxMarginY*9+15);

//Lounge Bar
if (mouseX>boxY+boxMarginX+110 && mouseX<boxY+boxMarginX+100+110 && mouseY > boxX+boxMarginY*9 && mouseY < boxX+boxMarginY*9+20){
  stroke(255);
  fill(mint);
  if(mousePressed){
    makeLoungeBar();
  }
} else {
  noFill();
}

rect(boxX+boxMarginX+140,boxY+boxMarginY*9, 140,20);
fill(255);
textSize(12);
text("LOUNGE BAR",boxY+boxMarginX+10+140,boxX+boxMarginY*9+15);



//LINE
strokeWeight(1);
stroke(255);
line(boxX+boxMarginX,boxY+boxMarginY*10.5,boxX+boxMarginX+280,boxY+boxMarginY*10.5);

//------------------------------------------------------------------------------------FUNCTIONS
fill(255);
textSize(20);
text("FUNCTIONS", boxY+boxMarginX, boxX+boxMarginY*11.5);

//Full
if (mouseX>boxY+boxMarginX && mouseX<boxY+boxMarginX+100 && mouseY > boxX+boxMarginY*12 && mouseY < boxX+boxMarginY*12+20){
  stroke(255);
  fill(mint);
  if(mousePressed){
    full();
  }
} else {
  noFill();
}

rect(boxX+boxMarginX,boxY+boxMarginY*12, 130,20);
fill(255);
textSize(12);
text("FILL THE ROOM",boxX+boxMarginX+10,boxY+boxMarginY*12+15);

//Empty
if (mouseX>boxY+boxMarginX+110 && mouseX<boxY+boxMarginX+100+110 && mouseY > boxX+boxMarginY*12 && mouseY < boxX+boxMarginY*12+20){
  stroke(255);
  fill(mint);
  if(mousePressed){
    empty();
  }
} else {
  noFill();
}

rect(boxX+boxMarginX+140,boxY+boxMarginY*12, 140,20);
fill(255);
textSize(12);
text("EMPTY THE ROOM",boxX+boxMarginX+10+140,boxY+boxMarginY*12+15);

//Hill
if (mouseX>boxY+boxMarginX && mouseX<boxY+boxMarginX+100 && mouseY > boxX+boxMarginY*12.5 && mouseY < boxX+boxMarginY*12.5+20){
  stroke(255);
  fill(mint);
  if(mousePressed){
    makeHill();
  }
} else {
  noFill();
}

rect(boxX+boxMarginX,boxY+boxMarginY*12.5, 130,20);
fill(255);
textSize(12);
text("MAKE A HILL",boxX+boxMarginX+10,boxY+boxMarginY*12.5+15);

//Make a Valley
if (mouseX>boxY+boxMarginX+110 && mouseX<boxY+boxMarginX+100+110 && mouseY > boxX+boxMarginY*12.5 && mouseY < boxX+boxMarginY*12.5+20){
  stroke(255);
  fill(mint);
  if(mousePressed){
    makeValley();
  }
} else {
  noFill();
}

rect(boxX+boxMarginX+140,boxY+boxMarginY*12.5, 140,20);
fill(255);
textSize(12);
text("MAKE A VALLEY",boxX+boxMarginX+10+140,boxY+boxMarginY*12.5+15);

//Wave
if (mouseX>boxY+boxMarginX && mouseX<boxY+boxMarginX+100 && mouseY > boxX+boxMarginY*13 && mouseY < boxX+boxMarginY*13+20){
  stroke(255);
  fill(mint);
  if(mousePressed){
    currentConfiguration = "Wave";
    waveCrestCol = 0;
    waveCrestRow = 0;
  }
} else {
  noFill();
}

rect(boxX+boxMarginX,boxY+boxMarginY*13, 130,20);
fill(255);
textSize(12);
text("MAKE A WAVE",boxX+boxMarginX+10,boxY+boxMarginY*13+15);



rectMode(CENTER);
}
}