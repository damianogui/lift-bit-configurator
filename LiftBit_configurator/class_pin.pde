class Pin { 
  int col;
  int row;
  float xpos;
  float ypos;
  float elevation;
  float Pelevation;
  boolean present;
  boolean movable;
  boolean selected;
  boolean hover;
  String myColor;

  // The Constructor is defined with arguments.
  Pin(int tempCol, int tempRow, float tempXpos, float tempYpos, float tempElevation, float tempPelevation, boolean tempPresent, boolean tempMovable, boolean tempSelected, boolean tempHover, String tempMyColor) { 
    present = tempPresent;
    movable = tempMovable;
    elevation = tempElevation;
    Pelevation = tempPelevation;
    col = tempCol;
    row = tempRow;
    xpos = tempXpos;
    ypos = tempYpos;
    selected = tempSelected;
    hover = tempHover;
    myColor = tempMyColor;
  }
  void interact() {
    //---------------------------------SELECTION
    if (!dragging) {
       //--------------------------------------------------------------------only top is visible (always)
        if (mouseX > xpos-radius/2 && mouseX < xpos+radius/2 && mouseY>ypos-radius-elevation && mouseY < ypos-radius/2-elevation) {
          //selected = true;
          hoverCol = col;
          hoverRow = row;
          hover = true;
        } else {
          hover = false;
        }
      
    }
    
    if (selectedCol == col && selectedRow == row){
      selected = true;
    }else{
    selected = false;
    }
    if (elevation < 0){
      elevation = 0;
    }
    if (elevation > maxElevation){
      elevation = maxElevation;
    }
  }

  void installationSetup() {

    if (selected && keyPressed && key == '0' && CTRLPressed) {
      present = false;
      movable = false;
      //endTable.setInt(row, col, 0);
      present = false;
      movable = false;
      println("PIN NOT PRESENT");
    }
    if (selected && keyPressed && key == '1' && CTRLPressed) {
      present = true;
      movable = false;
      //endTable.setInt(row, col, 1);
      present = true;
      movable = false;
      println("PIN PRESENT, NOT MOVABLE");
    }
    if (selected && keyPressed && key == '2' && CTRLPressed) {
      present = true;
      movable = true;
      endTable.setInt(row, col, 2);
      movable = true;
      movable = true;
      println("PIN PRESENT AND MOVABLE");
    }
  }

  void display() {

    if (present) {
      image(legs, xpos, ypos, pinSizeX, pinSizeY);

      //IF IN RANGE
      if (dist(selectedCol, selectedRow, 0, col, row, 0) < range && present) {    
        //image(selectedCushion, xpos,ypos-Pelevation,pinSizeX,pinSizeY);
      } 
      //COLORS
      if (myColor.equals("green")) {
        image(cushion, xpos, ypos-Pelevation, pinSizeX, pinSizeY);
      }
      if (myColor.equals("yellow")) {
        image(cushionYellow, xpos, ypos-Pelevation, pinSizeX, pinSizeY);
      }
      if (myColor.equals("pink")) {
        image(cushionPink, xpos, ypos-Pelevation, pinSizeX, pinSizeY);
      }
      if (myColor.equals("blue")) {
        image(cushionBlue, xpos, ypos-Pelevation, pinSizeX, pinSizeY);
      }
      
      if (hover) { 
        image(hoverCushion, xpos, ypos-Pelevation, pinSizeX, pinSizeY);
      } 

      if (selected) { 
        image(selectedCushion, xpos, ypos-Pelevation, pinSizeX, pinSizeY);
      } 
      
    } else {
      
      if (hover) {
        image(noPinSelected, xpos, ypos, pinSizeX, pinSizeY);
      } else {
        //image(noPin, xpos,ypos,pinSizeX,pinSizeY);
      }
    }
  }

  void number() {
    fill(0);
    //textSize(8);
    textAlign(CENTER);
    //text(col+":"+row, xpos, ypos,1);
    pushMatrix();
    //rotateX(-(PI/5));
    if (present && movable) text(round(Pelevation), xpos, ypos, base+Pelevation+2);
    popMatrix();
  }
  void animate() {
    if (movable || present) {
      if (Pelevation < elevation && Pelevation < maxElevation) {
        //Pelevation +=0.1; //30mm per second
        Pelevation +=pinSpeed;
      }
      if (Pelevation > elevation && Pelevation > 0) {
        //Pelevation -=0.1; //30mm per second
        Pelevation -=pinSpeed;
      }
    }
  }
}