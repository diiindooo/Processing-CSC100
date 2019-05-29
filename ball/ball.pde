Ball myBall, myBall2;

void setup(){
  size(500,500);
  
  myBall = new Ball(random(500), random(500)); 
  myBall2 = new Ball(width/2, height/2);
}

void draw(){
  background(255);
  myBall.setDiameter(300);
  myBall.display();
  myBall.move(-3, 0);
  
  myBall2.display();
  myBall2.move(3, 0);

}