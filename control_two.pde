class control_2 extends motion_2 {

  control_2() {}

  void change() {
    if (mousePressed) {
      if (mouseButton == LEFT) {
        //background(135);
        ninja.position_2(x, y);
        move();
        bounce();
        revolve();
      }
      if (mouseButton == RIGHT) {
        //background(135);
        ninja.position_3(x, y);
        move();
        bounce();
        revolve();
      }
    } else {
      //background(135);
      ninja.position_1(x, y);
      move();
      bounce();
      revolve();
    }
  }
}