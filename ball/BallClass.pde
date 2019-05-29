class Ball {

  int diameter;
  float speed;
  float x_position, y_position;
  float R, G, B;

  //constructor
  Ball(float xpos, float ypos) {
    diameter = 120;
    speed = 1;
    x_position = xpos;
    y_position = ypos;
    R = random(0, 255);
    G = random(0, 255);
    B = random(0, 255);
  }
  
  void setDiameter(int size){
    diameter = size;
  }

  void display() {
    noStroke();
    fill(R,G,B);
    ellipse(x_position, y_position, diameter, diameter);
  }

  void move(int x, int y) {
    if(x_position < width){
      x_position = x_position + x;
    }
  }
}