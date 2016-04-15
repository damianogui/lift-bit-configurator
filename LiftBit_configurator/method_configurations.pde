// I know this is crazy, but I couldn't make it work with external tables...

int[][] stool = {{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,1,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0}};

void makeStool() {
  selectedCol=-1;
  selectedRow=-1;
  for (int col = 0; col < columns; col++) {
    for (int row = 0; row < rows; row++) {
      pins[col][row].elevation = 0;
      pins[col][row].Pelevation = 0;
      pins[col][row].present = false;
      if (stool[row][col] != 0) {
        pins[col][row].present = true;
        pins[col][row].myColor = selectedColor;
        pins[col][row].elevation = stool[row][col];
      }
    }
  }
}
 
int[][] chair = {{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,100,100,0,0,0,0,0,0},
{0,0,1,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0}};

void makeChair() {
  selectedCol=-1;
  selectedRow=-1;
  for (int col = 0; col < columns; col++) {
    for (int row = 0; row < rows; row++) {
      pins[col][row].elevation = 0;
      pins[col][row].Pelevation = 0;
      pins[col][row].present = false;
      if (chair[row][col] != 0) {
        pins[col][row].present = true;
        pins[col][row].myColor = selectedColor;
        pins[col][row].elevation = chair[row][col];
      }
    }
  }
}

int[][] ziggurat = {{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,91,78,0,0,0,0,0,0},
{0,0,1,100,61,0,0,0,0,0},
{0,0,22,38,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0}};

void makeZiggurat() {
  selectedCol=-1;
  selectedRow=-1;
  for (int col = 0; col < columns; col++) {
    for (int row = 0; row < rows; row++) {
      pins[col][row].elevation = 0;
      pins[col][row].Pelevation = 0;
      pins[col][row].present = false;
      if (ziggurat[row][col] != 0) {
        pins[col][row].present = true;
        pins[col][row].myColor = selectedColor;
        pins[col][row].elevation = ziggurat[row][col];
      }
    }
  }
}

int[][] chaiseLounge = {{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,86,70,28,29,0,0,0,0},
{0,100,62,24,44,15,0,0,0,0},
{0,0,85,71,28,27,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0}};

void makeChaiseLounge() {
  selectedCol=-1;
  selectedRow=-1;
  for (int col = 0; col < columns; col++) {
    for (int row = 0; row < rows; row++) {
      pins[col][row].elevation = 0;
      pins[col][row].Pelevation = 0;
      pins[col][row].present = false;
      if (chaiseLounge[row][col] != 0) {
        pins[col][row].present = true;
        pins[col][row].myColor = selectedColor;
        pins[col][row].elevation = chaiseLounge[row][col];
      }
    }
  }
}

int[][] sofa = {{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,100,100,100,100,0,0,0,0},
{0,0,100,1,1,1,1,0,0,0},
{0,100,1,1,1,1,0,0,0,0},
{0,100,1,1,0,0,0,0,0,0},
{0,1,1,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0}};

void makeSofa() {
  selectedCol=-1;
  selectedRow=-1;
  for (int col = 0; col < columns; col++) {
    for (int row = 0; row < rows; row++) {
      pins[col][row].elevation = 0;
      pins[col][row].Pelevation = 0;
      pins[col][row].present = false;
      if (sofa[row][col] != 0) {
        pins[col][row].present = true;
        pins[col][row].myColor = selectedColor;
        pins[col][row].elevation = sofa[row][col];
      }
    }
  }
}

int[][] bed = {{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,1,0,0,0,0,0,0,0},
{0,0,0,18,1,1,1,1,0,0},
{0,0,18,1,1,1,1,1,0,0},
{0,0,0,18,1,1,1,1,0,0},
{0,0,1,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0}};

void makeBed() {
  selectedCol=-1;
  selectedRow=-1;
  for (int col = 0; col < columns; col++) {
    for (int row = 0; row < rows; row++) {
      pins[col][row].elevation = 0;
      pins[col][row].Pelevation = 0;
      pins[col][row].present = false;
      if (bed[row][col] != 0) {
        pins[col][row].present = true;
        pins[col][row].myColor = selectedColor;
        pins[col][row].elevation = bed[row][col];
      }
    }
  }
}

int[][] discoSofa = {{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,1,1,100,100,0,0,0},
{0,0,0,1,1,100,1,1,0,0},
{0,0,100,100,100,1,1,0,0,0},
{0,0,100,1,1,0,0,0,0,0},
{0,100,1,1,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0}};

void makeDiscoSofa() {
  selectedCol=-1;
  selectedRow=-1;
  for (int col = 0; col < columns; col++) {
    for (int row = 0; row < rows; row++) {
      pins[col][row].elevation = 0;
      pins[col][row].Pelevation = 0;
      pins[col][row].present = false;
      if (discoSofa[row][col] != 0) {
        pins[col][row].present = true;
        pins[col][row].myColor = selectedColor;
        pins[col][row].elevation = discoSofa[row][col];
      }
    }
  }
}

int[][] loungeBar = {{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,32,35,35,0,0,0},
{0,0,0,1,1,1,1,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,35,1,0,0,0,1,35,0},
{0,35,1,0,0,0,0,1,35,0},
{0,0,1,0,0,0,0,0,1,0},
{0,0,0,0,1,1,0,0,0,0},
{0,0,0,0,1,1,1,0,0,0},
{0,0,0,0,1,1,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,1,0,0,0,0,1,0,0},
{0,0,35,1,0,0,0,1,35,0},
{0,0,35,1,0,0,1,35,0,0}};

void makeLoungeBar() {
  selectedCol=-1;
  selectedRow=-1;
  for (int col = 0; col < columns; col++) {
    for (int row = 0; row < rows; row++) {
      pins[col][row].elevation = 0;
      pins[col][row].Pelevation = 0;
      pins[col][row].present = false;
      if (loungeBar[row][col] != 0) {
        pins[col][row].present = true;
        pins[col][row].myColor = selectedColor;
        pins[col][row].elevation = loungeBar[row][col];
      }
    }
  }
}