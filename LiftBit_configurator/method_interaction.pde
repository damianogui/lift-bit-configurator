void mouseClicked() { 
  if (mouseButton == LEFT){
  if (hoverCol !=-1 && hoverRow !=-1 && mouseX > Xmargin){ //---------------------------------------place or remove a pin
  
      if(pins[hoverCol][hoverRow].present == false){
      pins[hoverCol][hoverRow].myColor = selectedColor;
      pins[hoverCol][hoverRow].present = true;
      pins[hoverCol][hoverRow].elevation = 1;

    }
     
    if(pins[hoverCol][hoverRow].hover == true && pins[hoverCol][hoverRow].selected == false){
      selectedCol = pins[hoverCol][hoverRow].col;
      selectedRow = pins[hoverCol][hoverRow].row;
      selectedColor = pins[hoverCol][hoverRow].myColor;
    }
    if(pins[hoverCol][hoverRow].hover == true && pins[hoverCol][hoverRow].selected == true){
      //pins[hoverCol][hoverRow].present = false;
      selectedCol = -1;
      selectedRow = -1;
    }
  }
  
  if (mouseX>boxX && mouseX<boxX+60 && mouseY>boxY-30 && mouseY < boxY+60){ //---------------------------------------open and close menu
    menu = !menu;
  }
}
  //---- delete with right click
  
   if (mouseButton == RIGHT){
    pins[hoverCol][hoverRow].present = false;
}
}

void mouseDragged(){
  //float dragPoint = map(mouseY, mouseY-100,mouseY+100,0,maxElevation);
  dragging = true;
  float dragDifference = dragPoint-mouseY;
  if (hoverCol != -1 && pins[hoverCol][hoverRow].present){
      selectedCol = pins[hoverCol][hoverRow].col;
      selectedRow = pins[hoverCol][hoverRow].row;
      pins[hoverCol][hoverRow].elevation = dragDifference;
}
  //println(dragDifference);
}

void mouseReleased(){
  dragging = false;

}

void keyPressed() {
  
  
  
  
  if (key == 's'){
  if (writePNG == true){
  //saveTable();
  saveFrame("myConfiguration.png");
  } 
  writePNG =! writePNG;
  }
  
  if (key == 's' && ALTPressed){
  writePNG = true;
  }
  
  if (keyCode == BACKSPACE || keyCode == DELETE){
    if(selectedCol != -1 && selectedRow  != -1){
    pins[selectedCol][selectedRow].elevation=0;
    pins[selectedCol][selectedRow].Pelevation=0;
    pins[selectedCol][selectedRow].present = false;
    }
  }
  

}