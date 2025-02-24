class FullBoxes {
  String[] groupNames={"A,B,C,D"};
  String[] countryNames;
  int[][] tmpRes= xyPos();
  int[] xPos = tmpRes[0];
  int[] yPos = tmpRes[1];
  PFont font;
  int n;
  int x;
  int y;


  FullBoxes(int n) {
    xyPos();
    this.n=n;
  }
  void drawRect() {
    fill(255);
    rect(xPos[n], yPos[n], width/2-70, h);
  }

  void drawFlags() {
    allFlags[n] = loadImage("Flag" + n + ".png");// Load each image into the array
    image(allFlags[n], xPos[n]-59, yPos[n]+1, 60, h-1);
  }

  void countryNames() {
    countryNames = loadStrings("countries.txt");
    font=createFont("Arial Black", 1);
    textAlign(CORNER, CORNER);
    textFont(font);
    fill(43, 55, 79);
    textSize(23);
    text(countryNames[n], xPos[n]+50, yPos[n]+23);
  }

  void drawSmallRect() {
    noStroke();
    if (yPos[n]<height/2) {
      fill(117, 251, 253);
    } else {
      fill(255, 255, 84);
    }
    rect(xPos[n]+width/2-70-10, yPos[n], 10, 25);
  }

  void groupNames() {
    noStroke();
    smooth();
    textSize(18);
    fill(117, 251, 253);
    textAlign(CENTER, CENTER);
    
    switch(n%4) {
    case 0:
      text("GROUP A", width/4, 20);
    case 1:
      text("GROUP B", width/4+width/2, 20);
    case 2:
      fill(255, 255, 84);
      text("GROUP C", width/4, 194);
      case 3:
      fill(255, 255, 84);
      text("GROUP D", width/4+width/2, 194);
    }
  }

    int[][] xyPos() {
      int[] yPosT= new int [16];
      int[] xPosT= new int [16];
      for ( int i =1; i<17; i++) {

        if (i<=4) {
          y= i*spacing;
          x =60;
        } else if (i<9) {
          y= (i+1)*spacing;
          x =60;
        } else if (i<=12) {
          y=(i-8)*spacing;
          x =440;
        } else {
          y=(i-7)*spacing;
          x =440;
        }

        yPosT[i-1] =y;
        xPosT[i-1]=x;
      }
      int[][] res1 = new int[2][];
      res1[0] = xPosT;
      res1[1] = yPosT;

      return res1;
    }
  }
