/*class Group { //<>//
  String groupName;
  String txtColour;
  int theRectX =60;
  int theRectY;
  
  String flag;
  String countryName;
  Boolean smallCRect;
  
  

  Group(String tempGName, String tmpTxtC, int tmpRy, String tmpflag, String tmpCN, Boolean tmpSr) {
    groupName =tempGName;
    txtColour =tmpTxtC;
    theRectY=tmpRy;
    flag=tmpflag;
    countryName=tmpCN;
    smallCRect=tmpSr;
    //drawRect();
    
  }

  void drawRect() {
    noStroke();
      smooth();
      
    for (int i=0; i<16; i++) {
      
      if(i==4){
      theRectY+=35;
    }else if(i==8){
    theRectY= 30;
    theRectX+=width/2+5;
  }else if(i==12){
      theRectY+=35;
}
    //image(allFlags[i],theRectX-60,theRectY,60,25);
      
      fill(255);
      rect(theRectX, theRectY, (width/2-70), 25);
      theRectY+=35;
     
        
    }
    
  }
  
  
}
*/
