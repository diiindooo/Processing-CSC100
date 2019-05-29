class menu extends control_1 {

  int myKey;
  
  menu() {}

  void choose() {
    
    background(#F26A1B);
    fill(0);
    font = createFont("3D HAND DRAWNS", 60);
    textFont(font);
    textAlign(CENTER, TOP);
    textSize(80);
    text("TO THE RESCUE!", 1600, 500);
    textSize(40);
    text("Press 'Enter' or the move keys to continue", 1570, 1400);
    
    if (keyCode==ENTER||keyCode==LEFT||keyCode==RIGHT||keyCode==UP||keyCode==DOWN||keyCode==CONTROL||keyCode==ALT||key=='a'||key=='d'||key=='s'||key=='w') {
      option.mouse_keys();
      choice.change();
      block.update();
      block.display();
      block.door();
      
      
    }
    
  }
}