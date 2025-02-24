void countryNames(int i) {
  textAlign(CORNER, CORNER);
  textFont(font);
  fill(0);
  textSize(23);
  text(countryNames[i], xPos[i]+50, yPos[i]+23);
}

void groupName() {
  textSize(18);

  fill(117, 251, 253);
  textAlign(CENTER, CENTER);
  text("GROUP A", width/4, 20);
  text("GROUP B", width/4+width/2, 20);
  fill(255, 255, 84);
  text("GROUP C", width/4, 194);
  text("GROUP D", width/4+width/2, 194);
}

int[][] xyPos(){
  for( int i =0; i<16;i++){
 
  if(i<4){
      yPosIndVal= i*35+40;
      xPosIndVal =60;
  }else if(i<8){
      yPosIndVal= (i+1)*35+40;
      xPosIndVal =60;
  }else if(i<12){
      yPosIndVal=(i-8)*35+40;
      xPosIndVal =440;
  }else{
    yPosIndVal=(i-7)*35+40;
    xPosIndVal =440;
  }
   
  yPosT[i] =yPosIndVal;
  xPosT[i]=xPosIndVal;
 
}
  int[][] res1 = new int[2][];
  res1[0] = xPosT;
  res1[1] = yPosT;
  
     return res1;
     }
  
