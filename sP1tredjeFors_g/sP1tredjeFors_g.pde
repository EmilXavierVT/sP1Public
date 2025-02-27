PImage[] allFlags = new PImage[16];

int spacing=35;
int w; 
int h=25;
FullBoxes[] box =new FullBoxes[16];
void setup() {
  size(750, 375);
  w=width/2-70;
  
  for (int i =0; i<box.length; i++) {
    box[i] =new FullBoxes(i);
    
  }
}
void draw() {
  background(43, 55, 79);
  for (int i=0; i<box.length; i++) {
    box[i].runAway();
    box[i].drawRect();
    box[i].countryNames();
    box[i].drawSmallRect();
    box[i].groupNames();
    box[i].drawFlags();
    
    
  }
}
