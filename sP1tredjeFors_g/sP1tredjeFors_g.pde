PImage[] allFlags = new PImage[16];

int spacing=35;
int w =width/2-70;
int h=25;
FullBoxes[] box =new FullBoxes[16];
void setup(){
  size(750,375);
  background(43, 55, 79);
  for (int i =0; i<box.length;i++){
  box[i] =new FullBoxes(i);
  box[i].drawRect();
  box[i].countryNames();
  box[i].drawSmallRect();
  box[i].groupNames();
  }
}
void draw(){
for(int i=0;i<box.length;i++){
  box[i].drawFlags();
  
  }
}
