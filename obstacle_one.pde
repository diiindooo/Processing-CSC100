class obstacle_one extends motion_1 {

  int speedA, speedB, speedC, speedD, speedE, speedF, speedG, speedH, speedI, speedJ, speedK, speedL, speedM, speedN;
  int[] blocks = new int[28];
  int add = 380;

  obstacle_one() {

    speedA=23;
    speedB=15;
    speedC=20;
    speedD=17;
    speedE=24;
    speedF=14;
    speedG=19;
    speedH=22;
    speedI=18;
    speedJ=21;
    speedK=15;
    speedL=23;
    //speedM=16;
    speedN=25;

    for (int i=1; i<blocks.length; i+=2) {
      blocks[i] += add;
      add += 100;
    }
    for (int j=0; j<blocks.length-1; j+=4) {
      blocks[j] += (width*2.9);
    }
  }

  void update() {

    blocks[0]+=speedA;
    blocks[2]+=speedB;
    blocks[4]+=speedC;
    blocks[6]+=speedD;
    blocks[8]+=speedE;
    blocks[10]+=speedF;
    blocks[12]+=speedG;
    blocks[14]+=speedH;
    blocks[16]+=speedI;
    blocks[18]+=speedJ;
    blocks[20]+=speedK;
    blocks[22]+=speedL;
    blocks[24]=speedM;
    blocks[26]=speedN;
    

    if (blocks[0]<=0 || blocks[0]>=(width*3)) {
      speedA*=-1;
    }
    if (blocks[2]<=0 || blocks[2]>=(width*3)) {
      speedB*=-1;
    }
    if (blocks[4]<=0 || blocks[4]>=(width*3)) {
      speedC*=-1;
    }
    if (blocks[6]<=0 || blocks[6]>=(width*3)) {
      speedD*=-1;
    }
    if (blocks[8]<=0 || blocks[8]>=(width*3)) {
      speedE*=-1;
    }
    if (blocks[10]<=0 || blocks[10]>=(width*3)) {
      speedF*=-1;
    }
    if (blocks[12]<=0 || blocks[12]>=(width*3)) {
      speedG*=-1;
    }
    if (blocks[14]<=0 || blocks[14]>=(width*3)) {
      speedH*=-1;
    }
    if (blocks[16]<=0 || blocks[16]>=(width*3)) {
      speedI*=-1;
    }
    if (blocks[18]<=0 || blocks[18]>=(width*3)) {
      speedJ*=-1;
    }
    if (blocks[20]<=0 || blocks[20]>=(width*3)) {
      speedK*=-1;
    }
    if (blocks[22]<=0 || blocks[22]>=(width*3)) {
      speedL*=-1;
    }
    if (blocks[24]<=0 || blocks[24]>=(width*3)) {
      speedM*=-1;
    }
    if (blocks[26]<=0 || blocks[26]>=(width*3)) {
      speedN*=-1;
    }
  }

  void display() {
    fill(#8B3030);
    rect(blocks[0], blocks[1], 300, 100);
    rect(blocks[2], blocks[3], 300, 100);
    rect(blocks[4], blocks[5], 300, 100);
    rect(blocks[6], blocks[7], 300, 100);
    rect(blocks[8], blocks[9], 300, 100);
    rect(blocks[10], blocks[11], 300, 100);
    rect(blocks[12], blocks[13], 300, 100);
    rect(blocks[14], blocks[15], 300, 100);
    rect(blocks[16], blocks[17], 300, 100);
    rect(blocks[18], blocks[19], 300, 100);
    rect(blocks[20], blocks[21], 300, 100);
    rect(blocks[22], blocks[23], 300, 100);
    rect(blocks[24], blocks[25]+110, 300, 100);
    rect(blocks[26]+260, blocks[27]+130, 100, 300);
  }

  void door() {
    rect(width*3.09, 25, 200, 300);
    ellipse(width*3.19,100, 50,50); 
  }
}