Table startTable = new Table();
Table endTable = new Table();

void loadTable () {

  for (int c=0; c < columns; c++) {
    startTable.addColumn();
    endTable.addColumn();
  }
  for (int r = 0; r < rows; r++) {
    startTable.addRow();
    endTable.addRow();
  }
}

void installation () {
  //configuration = loadTable("installationSetup.csv");

  for (int col = 0; col < columns; col++) {
    for (int row = 0; row < rows; row++) {
      int value = configuration.getInt(row, col);
      if (value == 0) {
        pins[col][row].present = false;
        pins[col][row].movable = false;
      }
      if (value == 1) {
        pins[col][row].present = true;
        pins[col][row].movable = false;
        //pins[col][row].elevation = 0;
        //pins[col][row].Pelevation = 0;
      }
      if (value == 2) {
        pins[col][row].present = true;
        pins[col][row].movable = true;
      }
      if (value > 2) {
        pins[col][row].Pelevation = value;
        pins[col][row].elevation = value;
        pins[col][row].present = true;
        pins[col][row].movable = false;
      }
    }
  }
}



void readTable () {

  for (int col = 0; col < columns; col++) {
    for (int row = 0; row < rows; row++) {

      //pins[col][row].elevation = 0;
      if(configuration.getInt(row,col) != 0){
        pins[col][row].present = true;
        pins[col][row].elevation = configuration.getInt(row,col);
      }
    }
  }
}

void writeTable () {
}

void saveTable () {
  
  for (int col = 0; col < columns; col++) {
    for (int row = 0; row < rows; row++) {
      //if (pins[col][row].movable == true){
      endTable.setInt(row,col,int(pins[col][row].elevation));
      //}
    }
  }
  saveTable(endTable, "end.csv");
  println("*** Saved end table ***");
}