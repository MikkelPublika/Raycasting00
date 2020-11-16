int[] ws = {500,500};

int numOfLines = 3;

float rayLength = ws[0];
float rayPos = ws[0]/2;

String fps,fpsEx;

void settings() {
  size(ws[0],ws[1]);
}

void setup() {
  stroke(255);
  for(int i = 0; i < numOfLines; i++) {
    line(random(0,ws[0]+1),random(0,ws[1]+1),random(0,ws[0]+1),random(0,ws[1]+1));
  }
}

void draw() {
  fpsEx = nf(frameRate,0,-1);
  fps = "FPS: " + fpsEx;
  surface.setTitle(fps);
  
  background(0);
  for (int i = 0; i < 360; i++) {
    line(mouseX,mouseY,cos(radians(i))*rayLength+rayPos,sin(radians(i))*rayLength+rayPos);
  }
}
