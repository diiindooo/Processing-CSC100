void drawEyesOpen(float x, float y){
   ellipse(130+x, 180+y, 15, 15);
   ellipse(170+x, 180+y, 15, 15);
}

void drawEyesClosed(float x, float y){
  ellipse(130+x, 180+y, 15, 5);
  ellipse(170+x, 180+y, 15, 5);
}

void drawBody(float x, float y) {
  stroke(0);
  strokeWeight(100);
  character_head = 180+y;
  character_bottom = 230+y;
  
  line(150+x, character_head, 150+x, character_bottom);
  
  noStroke();
  fill(255);
  ellipse(125+x, 180+y, 50, 50); 
  ellipse(175+x, 180+y, 50, 50); 
  arc(150+x, 180+y, 100, 100, 0, PI);

  fill(0);
  quad(150+x, 180+y, 154+x, 200+y, 150+x, 210+y, 146+x, 200+y);
}

void drawOwl(float x, float y){
  drawBody(x,y);  
  drawEyesOpen(x,y);
}

void drawOwl2(float x, float y){
  drawBody(x,y);  
  drawEyesClosed(x,y);
}