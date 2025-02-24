color cyan=color(117, 251, 253);
color yellow=color(255, 255, 84);
color[] c={cyan, cyan, cyan, cyan, yellow, yellow, yellow, yellow, cyan, cyan, cyan, cyan, yellow, yellow, yellow, yellow};
int[] yPosT= new int [16];
int[] xPosT= new int [16];
int yPosIndVal;
int xPosIndVal;
PImage[] allFlags = new PImage[16];  // Allocate space for 16 images
PFont font;
String[] countryNames;
int[][] tmpRes= xyPos();
int[] xPos = tmpRes[0];
int[] yPos = tmpRes[1];

void setup() {
  size(750, 375);
  background(43, 55, 79);

  countryNames = loadStrings("countries.txt");
  font=createFont("Arial Black", 1);

  for (int i = 0; i < 16; i++) {


    allFlags[i] = loadImage("Flag" + i + ".png");// Load each image into the array

    fill(255);
    rect(xPos[i], yPos[i], (width/2-70), 25);

    countryNames(i);
    groupName();

    noStroke();
    fill(c[i]);
    rect(xPos[i]+(width/2-70)-10, yPos[i], 10, 25);
  }
}

void draw() {

  for (int i = 0; i < 16; i++) {
    image(allFlags[i], xPos[i]-59, yPos[i]+1, 60, 24);
  }
}
