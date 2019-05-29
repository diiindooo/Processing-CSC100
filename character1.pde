class character_1{

  float x, y, angleX, angleY, dx, dy;
  int button, speed;
  
  character_1(){}
  character_1(float a, float b) {
    x=a;
    y=b;
    speed = 15;
    angleX = radians(0.0);
    angleY = radians(0.0);
  }

  void Center(float x, float y) {
                                                            //-------CENTER HERO --------//
    //image(picture, 0, 0, width, height);
    background(#4DDAFF);
    strokeJoin(ROUND);
    strokeCap(PROJECT);

    /*** head ***/
    strokeWeight(2);
    fill(#007A9B);
    ellipse(160+x, 42+y, 80, 30);  // scalp part

    fill(255, 0, 0);
    beginShape();    // near head cap
    vertex(105+x, 36+y);
    vertex(215+x, 36+y);
    vertex(200+x, 45+y);
    vertex(215+x, 55+y);
    vertex(105+x, 55+y);
    vertex(120+x, 45+y);
    endShape(CLOSE);

    fill(255, 235, 193);
    beginShape();    // face
    vertex(120+x, 55+y);
    vertex(160+x, 47+y);
    vertex(200+x, 55+y);
    vertex(200+x, 80+y);
    vertex(180+x, 95+y);
    vertex(140+x, 95+y);
    vertex(120+x, 80+y);
    endShape(CLOSE);

    strokeWeight(5);    // forehead
    stroke(#141B86);
    line(120+x, 52+y, 160+x, 44+y);
    line(160+x, 44+y, 200+x, 52+y);
    stroke(#00FFFD);
    line(120+x, 48+y, 160+x, 40+y);
    line(160+x, 40+y, 200+x, 48+y);
    stroke(#141B86);
    line(120+x, 44+y, 160+x, 36+y);
    line(160+x, 36+y, 200+x, 44+y);

    fill(255, 0, 255);
    stroke(0);
    strokeWeight(2);          // star corners
    rect(125+x, 40+y, 8, 15);
    rect(188+x, 40+y, 8, 15);

    fill(255, 145, 26);
    quad(110+x, 62+y, 120+x, 57+y, 120+x, 75+y, 110+x, 70+y);  // ears
    quad(200+x, 57+y, 210+x, 62+y, 210+x, 70+y, 200+x, 75+y);

    fill(random(255), random(255), random(255));
    beginShape();     
    vertex(160+x, 36+y);
    vertex(164+x, 42+y);     // star
    vertex(168+x, 45+y);
    vertex(164+x, 48+y);
    vertex(160+x, 55+y);
    vertex(156+x, 48+y);
    vertex(152+x, 45+y);
    vertex(156+x, 42+y);
    endShape(CLOSE);

    strokeWeight(5);    // eyes
    line(130+x, 60+y, 150+x, 60+y);
    line(170+x, 60+y, 190+x, 60+y);
    stroke(#5E988D);
    line(140+x, 65+y, 145+x, 65+y);
    line(175+x, 65+y, 180+x, 65+y);

    stroke(0);        // smile
    strokeWeight(2);
    line(145+x, 85+y, 175+x, 85+y);
    line(142+x, 83+y, 145+x, 85+y);
    line(178+x, 83+y, 175+x, 85+y);

    fill(237, 193, 255);
    quad(140+x, 95+y, 180+x, 95+y, 190+x, 100+y, 130+x, 100+y);  // neck

    /*** body ***/

    fill(70);
    beginShape();
    vertex(120+x, 100+y);
    vertex(200+x, 100+y);
    vertex(200+x, 135+y);
    vertex(195+x, 150+y);
    vertex(195+x, 185+y);
    vertex(125+x, 185+y);
    vertex(125+x, 150+y);
    vertex(120+x, 135+y);
    endShape(CLOSE);

    strokeWeight(10);
    stroke(255);
    line(160+x, 105+y, 160+x, 185+y);
    strokeWeight(3);
    line(145+x, 130+y, 145+x, 185+y);
    line(175+x, 130+y, 175+x, 185+y);
    line(140+x, 120+y, 140+x, 185+y);
    line(180+x, 120+y, 180+x, 185+y);
    stroke(0);
    strokeWeight(2);
    fill(255, 255, 0);
    ellipse(160+x, 120+y, 25, 10);

    beginShape();    // leftie
    vertex(135+x, 105+y);
    vertex(160+x, 150+y);
    vertex(125+x, 120+y);
    endShape(CLOSE);

    beginShape();
    vertex(185+x, 105+y);
    vertex(160+x, 150+y);
    vertex(195+x, 120+y);
    endShape(CLOSE);

    /*** limbs ***/

    fill(255, 0, 0);
    beginShape();    // left shoulder
    vertex(90+x, 95+y);
    vertex(125+x, 95+y);
    vertex(135+x, 105+y);
    vertex(125+x, 120+y);
    vertex(90+x, 120+y);
    vertex(95+x, 105+y);
    endShape(CLOSE);

    beginShape();    // right shoulder
    vertex(195+x, 95+y);
    vertex(230+x, 95+y);
    vertex(220+x, 105+y);
    vertex(230+x, 120+y);
    vertex(195+x, 120+y);
    vertex(185+x, 105+y);
    endShape(CLOSE);

    // lefties
    fill(255, 145, 26);
    rect(95+x, 120+y, 25, 45);
    fill(255, 0, 0);
    rect(85+x, 155+y, 30, 18);

    fill(44, 0, 245);        // fist
    quad(85+x, 155+y, 82+x, 148+y, 118+x, 148+y, 115+x, 155+y);
    rect(82+x, 132+y, 36, 17);
    line(90+x, 132+y, 90+x, 145+y);
    line(100+x, 132+y, 100+x, 145+y);
    line(110+x, 132+y, 110+x, 145+y);

    fill(255, 145, 26);
    quad(200+x, 120+y, 225+x, 120+y, 230+x, 160+y, 205+x, 160+y);    // righties
    fill(255, 0, 0);
    quad(205+x, 160+y, 230+x, 160+y, 195+x, 195+y, 195+x, 167+y);

    /** weapon **/

    strokeWeight(5);
    line(82+x, 179+y, 220+x, 300+y); // blade
    line(90+x, 186+y, 103+x, 193+y);
    line(90+x, 187+y, 103+x, 203+y);

    stroke(0, 0, 255); // blue
    line(105+x, 205+y, 219+x, 302+y);
    line(109+x, 195+y, 223+x, 297+y);

    stroke(255, 255, 0);  // yellow
    line(100+x, 208+y, 219+x, 303+y);
    line(114+x, 193+y, 224+x, 296+y);
    stroke(0);
    line(94+x, 215+y, 118+x, 180+y);  // shaft

    strokeWeight(2);
    beginShape();      // belt
    vertex(115+x, 185+y);
    vertex(205+x, 185+y);
    vertex(200+x, 195+y);
    vertex(205+x, 205+y);
    vertex(115+x, 205+y);
    vertex(120+x, 195+y);
    endShape(CLOSE);

    fill(0, 0, 255);
    beginShape();    // skirt
    vertex(120+x, 205+y);
    vertex(200+x, 205+y);
    vertex(200+x, 220+y);
    vertex(160+x, 245+y);
    vertex(120+x, 245+y);
    endShape(CLOSE);

    fill(random(255), random(255), random(255));
    beginShape();                // star belt
    vertex(160+x, 180+y);
    vertex(165+x, 190+y);
    vertex(170+x, 195+y);
    vertex(165+x, 200+y);
    vertex(160+x, 210+y);
    vertex(155+x, 200+y);
    vertex(150+x, 195+y);
    vertex(155+x, 190+y);
    endShape(CLOSE);

    fill(255, 145, 26);
    beginShape();      // right thigh
    vertex(160+x, 245+y);
    vertex(165+x, 260+y);
    vertex(165+x, 280+y);
    vertex(195+x, 280+y);
    vertex(195+x, 260+y);
    vertex(200+x, 220+y);
    endShape(CLOSE);

    beginShape();      // left thigh
    vertex(124+x, 245+y);
    vertex(125+x, 260+y);
    vertex(125+x, 280+y);
    vertex(155+x, 280+y);
    vertex(155+x, 260+y);
    vertex(160+x, 245+y);
    endShape(CLOSE);

    fill(255, 0, 0);
    beginShape();    // left boot
    vertex(120+x, 275+y);
    vertex(125+x, 280+y);
    vertex(160+x, 280+y);
    vertex(158+x, 325+y);
    vertex(161+x, 325+y);
    vertex(161+x, 340+y);
    vertex(155+x, 345+y);
    vertex(115+x, 340+y);
    vertex(125+x, 325+y);
    vertex(125+x, 290+y);
    endShape(CLOSE);

    beginShape();    // right boot
    vertex(160+x, 280+y);
    vertex(195+x, 280+y);
    vertex(200+x, 275+y);
    vertex(195+x, 290+y);
    vertex(195+x, 325+y);
    vertex(205+x, 340+y);
    vertex(165+x, 345+y);
    vertex(161+x, 340+y);
    vertex(161+x, 325+y);
    vertex(163+x, 325+y);
    endShape(CLOSE);
    
     println("x="+ x + "   and   " + "y=" + y);
  }


  void Left(float x, float y) {
                                                            //-------- LEFT HERO --------//
    //image(picture, 0, 0, width, height);
    background(#4DDAFF);
    strokeJoin(ROUND);
    strokeCap(PROJECT);

    /*** head ***/
    strokeWeight(2);
    fill(#007A9B);
    ellipse(160+x, 42+y, 80, 30);  // scalp part

    fill(255, 0, 0);
    beginShape();    // bear head cap
    vertex(105+x, 36+y);
    vertex(215+x, 36+y);
    vertex(200+x, 45+y);
    vertex(215+x, 55+y);
    vertex(105+x, 55+y); 
    vertex(120+x, 45+y);
    endShape(CLOSE);

    fill(255, 235, 193);
    beginShape();    // face
    vertex(120+x, 55+y);
    vertex(160+x, 47+y);
    vertex(200+x, 55+y);
    vertex(200+x, 80+y);
    vertex(180+x, 95+y);
    vertex(140+x, 95+y);
    vertex(120+x, 80+y);
    endShape(CLOSE);

    strokeWeight(5);    // forehead
    stroke(#141B86);
    line(120+x, 52+y, 160+x, 44+y);
    line(160+x, 44+y, 200+x, 52+y);
    stroke(#00FFFD);
    line(120+x, 48+y, 160+x, 40+y);
    line(160+x, 40+y, 200+x, 48+y);
    stroke(#141B86);
    line(120+x, 44+y, 160+x, 36+y);
    line(160+x, 36+y, 200+x, 44+y);

    fill(255, 0, 255);
    stroke(0);
    strokeWeight(2);  // star corners(fiaed)
    rect(157+x, 35+y, 8, 15);

    fill(255, 145, 26);
    quad(175+x, 57+y, 185+x, 62+y, 185+x, 70+y, 175+x, 75+y);  // right ear(fixed)

    fill(random(255), random(255), random(255));
    beginShape();    // star(fiaed)
    vertex(120+x, 36+y);
    vertex(124+x, 42+y);
    vertex(128+x, 45+y);
    vertex(124+x, 48+y);
    vertex(120+x, 55+y);
    vertex(116+x, 48+y);
    vertex(112+x, 45+y);
    vertex(116+x, 42+y);
    endShape(CLOSE);

    strokeWeight(5);    // eyes (fixed)
    line(130+x, 60+y, 150+x, 60+y);
    stroke(#5E988D);
    line(135+x, 65+y, 140+x, 65+y);

    stroke(0);        // saile(fixed)
    strokeWeight(2);
    line(128+x, 85+y, 145+x, 85+y);
    line(145+x, 85+y, 150+x, 80+y);

    fill(237, 193, 255);
    quad(140+x, 95+y, 180+x, 95+y, 190+x, 100+y, 130+x, 100+y);  // neck

    /*** body ***/

    fill(70);
    beginShape();
    vertex(120+x, 100+y);
    vertex(200+x, 100+y);
    vertex(200+x, 135+y);
    vertex(195+x, 150+y);
    vertex(195+x, 185+y);
    vertex(125+x, 185+y);
    vertex(125+x, 150+y);
    vertex(120+x, 135+y);
    endShape(CLOSE);

    strokeWeight(10);
    stroke(255);
    line(160+x, 105+y, 160+x, 185+y);
    strokeWeight(3);
    line(145+x, 130+y, 145+x, 185+y);
    line(175+x, 130+y, 175+x, 185+y);
    line(140+x, 120+y, 140+x, 185+y);
    line(180+x, 120+y, 180+x, 185+y);
    stroke(0);
    strokeWeight(2);
    fill(255, 255, 0);
    ellipse(160+x, 120+y, 25, 10);

    beginShape();    // leftie
    vertex(135+x, 105+y);
    vertex(160+x, 150+y);
    vertex(125+x, 120+y);
    endShape(CLOSE);

    beginShape();
    vertex(185+x, 105+y);
    vertex(160+x, 150+y);
    vertex(195+x, 120+y);
    endShape(CLOSE);

    /*** limbs ***/

    fill(255, 0, 0);
    beginShape();    // left shoulder
    vertex(90+x, 95+y);
    vertex(125+x, 95+y);
    vertex(135+x, 105+y);
    vertex(125+x, 120+y);
    vertex(90+x, 120+y);
    vertex(95+x, 105+y);
    endShape(CLOSE);

    beginShape();    // right shoulder
    vertex(195+x, 95+y);
    vertex(230+x, 95+y);
    vertex(220+x, 105+y);
    vertex(230+x, 120+y);
    vertex(195+x, 120+y);
    vertex(185+x, 105+y);
    endShape(CLOSE);

    // lefties
    fill(255, 145, 26);
    rect(95+x, 120+y, 25, 45);
    fill(255, 0, 0);
    rect(85+x, 155+y, 30, 18);

    /** weapon2 **/
    strokeWeight(5);  // black
    line(118+x, 145+y, x - 140, 145+y); // blade
    line(77+x, 125+y, 77+x, 165+y);        // shaft

    stroke(0, 0, 255);  // blue
    line(72+x, 140+y, x - 140, 142+y);
    line(72+x, 150+y, x - 140, 148+y);

    stroke(255, 255, 0); // bellow
    line(72+x, 135+y, x - 140, 141+y);
    line(72+x, 155+y, x - 140, 149+y);
    /** ------------- **/

    stroke(0);
    strokeWeight(2);
    fill(44, 0, 245);        // fist
    quad(85+x, 155+y, 82+x, 150+y, 118+x, 150+y, 115+x, 155+y);
    rect(82+x, 132+y, 36, 18);
    line(90+x, 132+y, 90+x, 145+y);
    line(100+x, 132+y, 100+x, 145+y);
    line(110+x, 132+y, 110+x, 145+y);

    fill(255, 145, 26);
    quad(200+x, 120+y, 225+x, 120+y, 230+x, 160+y, 205+x, 160+y);    // righties
    fill(255, 0, 0);
    quad(205+x, 160+y, 230+x, 160+y, 195+x, 195+y, 195+x, 167+y);

    strokeWeight(2);
    beginShape();      // belt
    vertex(115+x, 185+y);
    vertex(205+x, 185+y);
    vertex(200+x, 195+y);
    vertex(205+x, 205+y);
    vertex(115+x, 205+y);
    vertex(120+x, 195+y);
    endShape(CLOSE);

    fill(0, 0, 255);
    beginShape();    // skirt
    vertex(120+x, 205+y);
    vertex(200+x, 205+y);
    vertex(200+x, 220+y);
    vertex(160+x, 245+y);
    vertex(120+x, 245+y);
    endShape(CLOSE);

    fill(random(255), random(255), random(255));
    beginShape();    // star belt
    vertex(160+x, 180+y);
    vertex(165+x, 190+y);
    vertex(170+x, 195+y);
    vertex(165+x, 200+y);
    vertex(160+x, 210+y);
    vertex(155+x, 200+y);
    vertex(150+x, 195+y);
    vertex(155+x, 190+y);
    endShape(CLOSE);

    fill(255, 145, 26);
    beginShape();    // right thigh
    vertex(160+x, 245+y);
    vertex(165+x, 260+y);
    vertex(165+x, 280+y);
    vertex(195+x, 280+y);
    vertex(195+x, 260+y);
    vertex(200+x, 220+y);
    endShape(CLOSE);

    beginShape();    // left thigh
    vertex(124+x, 245+y);
    vertex(125+x, 260+y);
    vertex(125+x, 280+y);
    vertex(155+x, 280+y);
    vertex(155+x, 260+y);
    vertex(160+x, 245+y);
    endShape(CLOSE);

    fill(255, 0, 0);
    beginShape();    // left boot
    vertex(120+x, 275+y);
    vertex(125+x, 280+y);
    vertex(160+x, 280+y);
    vertex(158+x, 325+y);
    vertex(161+x, 325+y);
    vertex(161+x, 340+y);
    vertex(155+x, 345+y);
    vertex(115+x, 340+y);
    vertex(125+x, 325+y);
    vertex(125+x, 290+y);
    endShape(CLOSE);

    beginShape();    // right boot
    vertex(160+x, 280+y);
    vertex(195+x, 280+y);
    vertex(200+x, 275+y);
    vertex(195+x, 290+y);
    vertex(195+x, 325+y);
    vertex(205+x, 340+y);
    vertex(165+x, 345+y);
    vertex(161+x, 340+y);
    vertex(161+x, 325+y);
    vertex(163+x, 325+y);
    endShape(CLOSE);
    
     println("x="+ x + "   and   " + "y=" + y);
  }


  void Right(float x, float y) {
                                                                //------- RIGHT HERO --------//
    //image(picture, 0, 0, width, height);
    background(#4DDAFF);
    strokeJoin(ROUND);
    strokeCap(PROJECT);

    /*** head ***/
    strokeWeight(2);
    fill(#007A9B);
    ellipse(160+x, 42+y, 80, 30);  // scalp part

    fill(255, 0, 0);
    beginShape();    // near head cap
    vertex(105+x, 36+y);
    vertex(215+x, 36+y);
    vertex(200+x, 45+y);
    vertex(215+x, 55+y);
    vertex(105+x, 55+y);
    vertex(120+x, 45+y);
    endShape(CLOSE);

    fill(255, 235, 193);
    beginShape();          // face
    vertex(120+x, 55+y);
    vertex(160+x, 47+y);
    vertex(200+x, 55+y);
    vertex(200+x, 80+y);
    vertex(180+x, 95+y);
    vertex(140+x, 95+y);
    vertex(120+x, 80+y);
    endShape(CLOSE);

    strokeWeight(5);    // forehead
    stroke(#141B86);
    line(120+x, 52+y, 160+x, 44+y);
    line(160+x, 44+y, 200+x, 52+y);
    stroke(#00FFFD);
    line(120+x, 48+y, 160+x, 40+y);
    line(160+x, 40+y, 200+x, 48+y);
    stroke(#141B86);
    line(120+x, 44+y, 160+x, 36+y);
    line(160+x, 36+y, 200+x, 44+y);

    fill(255, 0, 255);
    stroke(0);
    strokeWeight(2);      // star corners(fixed)
    rect(155+x, 35+y, 8, 15);

    fill(255, 145, 26);
    quad(135+x, 62+y, 145+x, 57+y, 145+x, 75+y, 135+x, 70+y);  // left ear(fixed)

    fill(random(255), random(255), random(255));
    beginShape();        // star(fixed)
    vertex(198+x, 36+y);
    vertex(202+x, 42+y);
    vertex(206+x, 45+y);
    vertex(202+x, 48+y);
    vertex(198+x, 55+y);
    vertex(194+x, 48+y);
    vertex(190+x, 45+y);
    vertex(194+x, 42+y);
    endShape(CLOSE);

    strokeWeight(5);    // eyes(fixed)
    line(170+x, 60+y, 190+x, 60+y);
    stroke(#5E988D);
    line(180+x, 65+y, 185+x, 65+y);

    stroke(0);        // smile(fixed)
    strokeWeight(2);
    line(173+x, 85+y, 192+x, 85+y);
    line(169+x, 81+y, 173+x, 85+y);

    fill(237, 193, 255);
    quad(140+x, 95+y, 180+x, 95+y, 190+x, 100+y, 130+x, 100+y);  // neck

    /*** body ***/

    fill(70);
    beginShape();
    vertex(120+x, 100+y);
    vertex(200+x, 100+y);
    vertex(200+x, 135+y);
    vertex(195+x, 150+y);
    vertex(195+x, 185+y);
    vertex(125+x, 185+y);
    vertex(125+x, 150+y);
    vertex(120+x, 135+y);
    endShape(CLOSE);

    strokeWeight(10);
    stroke(255);
    line(160+x, 105+y, 160+x, 185+y);
    strokeWeight(3);
    line(145+x, 130+y, 145+x, 185+y);
    line(175+x, 130+y, 175+x, 185+y);
    line(140+x, 120+y, 140+x, 185+y);
    line(180+x, 120+y, 180+x, 185+y);
    stroke(0);
    strokeWeight(2);
    fill(255, 255, 0);
    ellipse(160+x, 120+y, 25, 10);

    beginShape();    // leftie chest
    vertex(135+x, 105+y);
    vertex(160+x, 150+y);
    vertex(125+x, 120+y);
    endShape(CLOSE);

    beginShape();    // rightie chest
    vertex(185+x, 105+y);
    vertex(160+x, 150+y);
    vertex(195+x, 120+y);
    endShape(CLOSE);

    /*** limbs ***/

    fill(255, 0, 0);
    beginShape();    // left shoulder
    vertex(90+x, 95+y);
    vertex(125+x, 95+y);
    vertex(135+x, 105+y);
    vertex(125+x, 120+y);
    vertex(90+x, 120+y);
    vertex(95+x, 105+y);
    endShape(CLOSE);

    beginShape();    // right shoulder
    vertex(195+x, 95+y);
    vertex(230+x, 95+y);
    vertex(220+x, 105+y);
    vertex(230+x, 120+y);
    vertex(195+x, 120+y);
    vertex(185+x, 105+y);
    endShape(CLOSE);

    // lefties
    fill(255, 145, 26);
    rect(95+x, 120+y, 25, 45);
    fill(255, 0, 0);
    quad(95+x, 165+y, 125+x, 185+y, 125+x, 160+y, 120+x, 165+y);

    /** weapon3 **/
    strokeWeight(5);
    line(249+x, 205+y, 340+x, 35+y);  // blade
    line(250+x, 165+y, 280+x, 180+y);  // neck
    line(261+x, 170+y, 250+x, 200+y);
    line(270+x, 176+y, 250+x, 200+y);

    stroke(0, 0, 255);                // blue
    line(263+x, 167+y, 338+x, 34+y);
    line(271+x, 170+y, 343+x, 37+y);
    stroke(255, 255, 0);              // yellow
    line(259+x, 163+y, 338+x, 33+y);
    line(277+x, 173+y, 345+x, 37+y);
    stroke(0);
    /** ---------- **/

    strokeWeight(2);
    fill(255, 145, 26);
    quad(200+x, 120+y, 225+x, 120+y, 230+x, 160+y, 205+x, 160+y);    // righties
    fill(255, 0, 0);
    quad(205+x, 160+y, 230+x, 160+y, 240+x, 175+y, 240+x, 200+y);
    fill(0, 0, 255);
    quad(240+x, 175+y, 240+x, 200+y, 245+x, 203+y, 245+x, 172+y);
    beginShape();
    vertex(245+x, 172+y);
    vertex(260+x, 172+y);
    vertex(265+x, 176+y);
    vertex(273+x, 176+y);
    vertex(273+x, 200+y);
    vertex(265+x, 203+y);
    vertex(245+x, 203+y);
    endShape(CLOSE);
    line(255+x, 180+y, 265+x, 176+y);
    line(273+x, 182+y, 260+x, 184+y);
    line(273+x, 189+y, 260+x, 191+y);
    line(273+x, 197+y, 260+x, 198+y);

    fill(255, 0, 0);
    strokeWeight(2);
    beginShape();      // belt
    vertex(115+x, 185+y);
    vertex(205+x, 185+y);
    vertex(200+x, 195+y);
    vertex(205+x, 205+y);
    vertex(115+x, 205+y);
    vertex(120+x, 195+y);
    endShape(CLOSE);

    fill(0, 0, 255);
    beginShape();    // skirt
    vertex(120+x, 205+y);
    vertex(200+x, 205+y);
    vertex(200+x, 220+y);
    vertex(160+x, 245+y);
    vertex(120+x, 245+y);
    endShape(CLOSE);

    fill(random(255), random(255), random(255));
    beginShape();    // star belt
    vertex(160+x, 180+y);
    vertex(165+x, 190+y);
    vertex(170+x, 195+y);
    vertex(165+x, 200+y);
    vertex(160+x, 210+y);
    vertex(155+x, 200+y);
    vertex(150+x, 195+y);
    vertex(155+x, 190+y);
    endShape(CLOSE);

    fill(255, 145, 26);
    beginShape();    // right thigh
    vertex(160+x, 245+y);
    vertex(165+x, 260+y);
    vertex(165+x, 280+y);
    vertex(195+x, 280+y);
    vertex(195+x, 260+y);
    vertex(200+x, 220+y);
    endShape(CLOSE);

    beginShape();    // left thigh
    vertex(124+x, 245+y);
    vertex(125+x, 260+y);
    vertex(125+x, 280+y);
    vertex(155+x, 280+y);
    vertex(155+x, 260+y);
    vertex(160+x, 245+y);
    endShape(CLOSE);

    fill(255, 0, 0);
    beginShape();    // left boot
    vertex(120+x, 275+y);
    vertex(125+x, 280+y);
    vertex(160+x, 280+y);
    vertex(158+x, 325+y);
    vertex(161+x, 325+y);
    vertex(161+x, 340+y);
    vertex(155+x, 345+y);
    vertex(115+x, 340+y);
    vertex(125+x, 325+y);
    vertex(125+x, 290+y);
    endShape(CLOSE);

    beginShape();    // right boot
    vertex(160+x, 280+y);
    vertex(195+x, 280+y);
    vertex(200+x, 275+y);
    vertex(195+x, 290+y);
    vertex(195+x, 325+y);
    vertex(205+x, 340+y);
    vertex(165+x, 345+y);
    vertex(161+x, 340+y);
    vertex(161+x, 325+y);
    vertex(163+x, 325+y);
    endShape(CLOSE);
    
     println("x="+ x + "   and   " + "y=" + y);
  }
}