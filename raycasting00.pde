int[] ws = {1600,900};

int numOfLines = 3;

float rayLength = ws[0];
float rayPos = ws[0]/2;

String fps,fpsEx;

float[] ranPos = new float[numOfLines*4];

void settings() {
  size(ws[0],ws[1]);
}

void setup() {
  for(int i = 0; i < ranPos.length; i++) {
    ranPos[i] = random(0,ws[0]+1);
  }
}

void draw() {
  fpsEx = nf(frameRate,0,-1);
  fps = "FPS: " + fpsEx;
  surface.setTitle(fps);
  
  background(0);
  stroke(255);
  strokeWeight(5);
  for(int i = 0; i < ranPos.length; i+=4) {
    line(ranPos[i],ranPos[i+1],ranPos[i+2],ranPos[i+3]);
  }
  stroke(255);
  strokeWeight(1);
  for (int i = 0; i < 360; i++) {
    line(mouseX,mouseY,cos(radians(i))*rayLength+rayPos,sin(radians(i))*rayLength+rayPos);
  }
}
