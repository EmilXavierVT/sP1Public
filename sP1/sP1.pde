PImage[] allFlags =new PImage[16];//creates the array that holds all .png files //<>//

//next we have the array initialization of all country names
String [] allCountryNames ={"RUSSIA", "SAUDI_ARABIA", "EGYPT", "URUGUAY", "PORTUGAL", "MOROCCO", "SPAIN",
  "IRAN", "FRANCE", "AUSTRALIA", "PERU", "DENMARK", "ARGENTINA", "ICELAND", "CROATIA", "NIGERIA"};

int theRectX =60;  //the variable that allows us to change the x position of all elements
int theRectY =40; // same for the y position
PFont font;
color c;

//Group group;


void setup() {
  smooth();
  size(750, 375);
  background(43, 55, 79);
  drawRect( theRectX, theRectY);
  setText(theRectX, theRectY);
  colorRect(theRectX, theRectY);
  displayGroupNames();
  //lurkingShadows(theRectX, theRectY);
  

  stroke(255);
  strokeWeight(3);
  line(width/2-1, 0, width/2-1, height);
   

  //group=new Group("Group A", "cyan", 30, "RUSSIA", "Russia", true);


  allFlags[0] = loadImage("RUSSIA.png");
  allFlags[1] = loadImage("SAUDI_ARABIA.png");
  allFlags[2] = loadImage("EGYPT.png");
  allFlags[3] = loadImage("URUGUAY.png");
  allFlags[4] = loadImage("PORTUGAL.png");
  allFlags[5] = loadImage("SPAIN.png");
  allFlags[6] = loadImage("MOROCCO.png");
  allFlags[7] = loadImage("IRAN.png");
  allFlags[8] = loadImage("FRANCE.png");
  allFlags[9] = loadImage("AUSTRALIA.png");
  allFlags[10] = loadImage("PERU.png");
  allFlags[11] = loadImage("DENMARK.png");
  allFlags[12] = loadImage("ARGENTINA.png");
  allFlags[13] = loadImage("ICELAND.png");
  allFlags[14] = loadImage("CROATIA.png");
  allFlags[15] = loadImage("NIGERIA.png");
}


void draw() {

  drawFlags(theRectX, theRectY);
  
}




void drawFlags(int theRectX,int theRectY) {
  for (int i=0; i<16; i++) {
    int[] res1 = xyPlacement(i, theRectX, theRectY);
     
      theRectX = res1[0];
      theRectY = res1[1];
    /*if (i==4) {
      theRectY+=35;
    } else if (i==8) {
      theRectY= 30;
      theRectX+=width/2+5;
    } else if (i==12) {
      theRectY+=35;
    }*/

    image(allFlags[i], theRectX-60, theRectY, 60, 25);
    
    theRectY+=35;
    
  }
}


void setText(int theRectX,int theRectY) {
   theRectX =60;
   theRectY =75;
  for (int i=0; i<16; i++) {
    
    if (i==4) {
      theRectY+=35;
    } else if (i==8) {
      theRectY= 75;
      theRectX+=width/2+5;
    } else if (i==12) {
      theRectY+=35;
    }

    font = createFont("Arial Black",10);
    textFont(font);


    fill(43, 55, 79);
    textSize(23);
    textAlign(CORNER, CORNER);
    text(allCountryNames[i], theRectX+50, (theRectY-12));
    theRectY+=35;
  }
}

void  colorRect(int theRectX,int theRectY) {
  smooth();
  
   for (int i=0; i<16; i++) {
    int[] res1 = xyPlacement(i, theRectX, theRectY);
     
      theRectX = res1[0];
      theRectY = res1[1];
   
if(theRectY>height/2){
    c =color(117,251,253);
  }else if(theRectY<height/2){
  c = color(255,255,84);
}
  fill(c);
  rect(theRectX+(width/2-70)-10, theRectY, 10, 25);
  
  theRectY+=35;
}
}



void drawRect(int theRectX,int theRectY) {
    noStroke();
      smooth();
      
    for (int i=0; i<16; i++) {
      
      
    int[] res1 = xyPlacement(i, theRectX, theRectY);
     
      theRectX = res1[0];
      theRectY = res1[1];
    
      fill(255);
      rect(theRectX, theRectY, (width/2-70), 25);
      println(theRectX);
      
      theRectY+=35;
     
        
    }
    
  }
  
  

int[] xyPlacement(int i, int theRectX, int theRectY){
  if(i==4){
      theRectY+=35;
  }else if(i==8){
      theRectY= 40;
      theRectX+=width/2+5;
  }else if(i==12){
      theRectY+=35;
  }
  int[] results ={theRectX,theRectY};
  
  return results;
}

void displayGroupNames(){
fill(255,255,84);
  textSize(18);
  textAlign(CENTER,CENTER);
  text("GROUP A",width/4,20);
  text("GROUP B",width/4+width/2,20);
  fill(c);
  text("GROUP C",width/4,194);
  text("GROUP D",width/4+width/2,194);
}

/*void lurkingShadows(int theRectX,int theRectY){
  
for (int i = 0; i < 16; i++) {
  int[] res1 = xyPlacement(i, theRectX, theRectY);
     
      theRectX = res1[0];
      theRectY = res1[1];
    float alpha = map(i, 0, 16, 255, 0); // Fades from 100 to 0
    fill(0, 0, 0, alpha);
    rect(theRectX  , theRectY, 5, 25);
    theRectY+=35;
  }
  
}*/

// we want to make 4 groups we'll create them as objects in a class.
// the Data of the class weill be: group name,txt color, the white rect, flag,
//country name, colored small rect
// i constructoren skal vi bygge hver gruppe, derfor skal den indholde:
//position og valg af flag, position og størrelse af rect, txt allignement for group name
//og country name, farve og position af small rect
