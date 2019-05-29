float pos_x = 0;
float pos_y = 0;
float angle = 0;
float character_bottom, character_head;
int scalar = 60;
boolean change = true;
int odd_even_flag = 0;

void setup(){
  size(500, 500);
  noLoop();
}

void resetBackground(){
  background(255);
}

void draw(){
  resetBackground();
  /*pos_y = sin(angle) * scalar;
  pos_x = cos(angle) * scalar;
  translate(200,200);
  rotate(radians(scalar));
  drawOwl(pos_x, pos_y);
  */  
  for(int y = -130; y <= height; y+=100){
    //change = true;
    for(int x = -100; x <= width; x+=100){
      if(change){
        drawOwl(x, y);
        change = false;
      }else{
        drawOwl2(x, y);
        change = true;
      }
    }
    //ternary operator <condition> ? <if_condition_true> : <if_condition_false>
    //change = (odd_even_flag % 2 == 0) ? false : true;
    //odd_even_flag++;
  }
  
  
  
  
}