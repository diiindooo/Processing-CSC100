class motion_1 extends character_1 {


  motion_1() {
    speed = 15;
  }

  void keyCenter() {

    if (key=='a') {
      if ((x+80)>0) {   
        x=x-speed;
      }
    } else if (key=='d') {
      if ((x+230+70)<width*3.4) {  
        x=x+speed;
      }
    } else if (key=='w') {
      if ((y+15)>0) {
        y=y-speed;
      }
    } else if (key=='s') {
      if ((y+350+245)<height*3.7) {
        y=y+speed;
      }
    }
  }


  void keyLeft() {

    if (key=='A'||key=='a') {
      if ((x - 140)>0) {   
        x=x-speed;
      }
    } else if (key=='D'||key=='d') {
      if ((x+230+70)<width*3.4) {  
        x=x+speed;
      }
    } else if (key=='W'||key=='w') {
      if ((y+15)>0) {
        y=y-speed;
      }
    } else if (key=='S'||key=='s') {
      if ((y+350+245)<height*3.7) {
        y=y+speed;
      }
    }
  }


  void keyRight() {

    if (key=='A'||key=='a') {
      if ((x+90)>0) {  
        x=x-speed;
      }
    } else if (key=='D'||key=='d') {
      if ((x+230+190)<width*3.4) { 
        x=x+speed;
      }
    } else if (key=='W'||key=='w') {
      if ((y+15)>0) {
        y=y-speed;
      }
    } else if (key=='S'||key=='s') {
      if ((y+350+245)<height*3.7) {
        y=y+speed;
      }
    }
  }

  void keyCTRL() {
    if (keyPressed) {
      if (keyCode==CONTROL) {
        y=y-speed;
        if (y<-15 || y>((height*3.7)-560)) {
          speed=speed*-1;
        }
      }
    }
  }

  void keyALT() {

    if (keyPressed) {
      if (keyCode==ALT) {
        x = x + sin(angleX)*20;
        y = y + cos(angleY)*20;
        angleX = angleX + 25;
        angleY = angleY + 25;
      }
    }
  }
}