character_1 hero;
control_1 option;
character_2 ninja;
control_2 choice;
obstacle_one block;
menu game;
PFont font;
//PImage picture;

/**  
 * 
 *  characters scaled to 0.3
 *  
 **/

void setup() {
  size(960, 640);
  //background(#4DDAFF);
  //frameRate(25);
  //picture = loadImage("wallpaper.png");
  hero = new character_1(25,height*2.78);
  ninja = new character_2(3500, 5500);
  option = new control_1(0);
  choice = new control_2();
  block = new obstacle_one();
  game = new menu();
  
  
  
}

void draw() {  
  scale(0.3);
   background(#4DDAFF);
  game.choose();
 
}