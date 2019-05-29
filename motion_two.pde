class motion_2 extends character_2 {

  motion_2() {
  }

  void move() {
    if (keyPressed) {
      if (keyCode==UP) {
        if (H != -20) {
          y = y - 15;
          H = H - 5;
        }
      }
      if (keyCode==DOWN) {
        if (H != height-70) {
          y = y + 15;
          H = H + 5;
        }
      }
      if (keyCode==LEFT) {
        if (W != -115) {
          x = x - 15;
          W = W - 5;
        }
      }
      if (keyCode==RIGHT) {
        if (W != width-85) {
          x = x + 15;
          W = W + 5;
        }
      }
    }
  }


  void bounce() {
    if (keyPressed) {
      if (keyCode==CONTROL) {
        y = y - bounceSpeed;
        H = H - bounceSpeed;
        if (H < 0) {
          bounceSpeed = bounceSpeed * -1;
        }
        if (H + 350 > height) {
          bounceSpeed = bounceSpeed * -1;
        }
      }
    }
  }

  void revolve() {
    if (keyPressed) {
      if (keyCode==ALT) {
        x = x + cos(angle_C) * movement;
        y = y + sin(angle_S) * movement;
        angle_C = angle_C + 0.075;
        angle_S = angle_S + 0.075;
      }
    }
  }
}