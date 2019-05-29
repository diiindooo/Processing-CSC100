class control_1 extends motion_1 {

  control_1(){}
  control_1(int bot) {
    button = bot;
    x = 25;
    y = height*2.78;
  }


  void mouse_keys() {

    if (mousePressed) {
      if (mouseButton==LEFT) {
        hero.Left(x, y);
        button = 1;
        if (keyPressed) {          
          keyLeft();
          keyCTRL();
          keyALT();
          // displays left hero
        }
      } else if (mouseButton==RIGHT) {
        hero.Right(x, y);
         button = 2;
        if (keyPressed) {
          keyRight();
          keyCTRL();
          keyALT();
          // displays right hero
        }
      }
    }
    else {
      hero.Center(x, y);
      button = 0;
      if (keyPressed) {
        keyCenter();
        keyCTRL();
        keyALT();
      }
      // displays center hero
    }
  }
}