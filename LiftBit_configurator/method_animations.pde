float waveCrestCol;
float waveCrestRow;

void makeRandom() {
  currentConfiguration = ("Random");

  for (int col = 0; col < columns; col++) {
    for (int row = 0; row < rows; row++) {
      pins[col][row].elevation = int (random(0, maxElevation));
    }
  }
    }
  
void makeWave() {
  //currentConfiguration = ("Waves");
  for (int col = 0; col < columns; col++) {
    for (int row = 0; row < rows; row++) {
      if(pins[col][row].movable){
      pins[col][row].elevation = int(maxElevation-dist(waveCrestCol, waveCrestRow, 0, col, row, 0)*(maxElevation/range));
      }
    }
  }
  if (waveCrestCol < columns) {
    waveCrestCol +=0.1;
  } else {
    //waveCrestCol = 0;
    //waveCrestRow = 0;
  }
  if (waveCrestRow <  rows) {
    waveCrestRow +=0.1;
  } else {
    //waveCrestRow = 0;
    //waveCrestCol = 0;
    currentConfiguration = "none";
  }
}

void makeHill() {
  currentConfiguration = ("Hill");
  for (int col = 0; col < columns; col++) {
    for (int row = 0; row < rows; row++) {
      if(dist(selectedCol, selectedRow, col, row) < range){
        //if(pins[col][row].movable){
          //pins[col][row].present = true; 
          //pins[col][row].myColor = selectedColor;
          pins[col][row].elevation = int(maxElevation-dist(selectedCol, selectedRow, 0, col, row, 0)*(maxElevation/range));
        //}
      }
    }
  }
}

void makeValley() {
  currentConfiguration = ("Valley");
  for (int col = 0; col < columns; col++) {
    for (int row = 0; row < rows; row++) {
      if(dist(selectedCol, selectedRow, col, row) < range){
        //if(pins[col][row].movable){
        //pins[col][row].present = true; 
        //pins[col][row].myColor = selectedColor;
        pins[col][row].elevation = int(dist(selectedCol, selectedRow, col, row)*(maxElevation/range));
        //}
      }
    }
  }
}

void allDown () {

  for (int col = 0; col < columns; col++) {
    for (int row = 0; row < rows; row++) {
     if(dist(selectedCol, selectedRow, 0, col, row, 0) < range){
        //pins[col][row].present = true;
        //pins[col][row].movable = true;
        if(pins[col][row].movable){
        pins[col][row].elevation = 0;
        }
        //pins[col][row].Pelevation = 0;
     }
    }
  }
}

void allUp () {

  for (int col = 0; col < columns; col++) {
    for (int row = 0; row < rows; row++) {
     if(dist(selectedCol, selectedRow, 0, col, row, 0) < range){
        //pins[col][row].present = true;
        //pins[col][row].movable = true;
        if(pins[col][row].movable){
        pins[col][row].elevation = maxElevation;
        }
        //pins[col][row].Pelevation = 0;
     }
    }
  }
}

void full () {

  for (int col = 0; col < columns; col++) {
    for (int row = 0; row < rows; row++) {
     
        pins[col][row].myColor = selectedColor;
        pins[col][row].present = true;
        pins[col][row].elevation = 0;
     
    }
  }
}

void empty () {

  for (int col = 0; col < columns; col++) {
    for (int row = 0; row < rows; row++) {
     
        pins[col][row].present = false;
        pins[col][row].elevation = 0;
     
    }
  }
}