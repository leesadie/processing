float rAngle = random(0.1,30);
float rStroke = random(0, 255);
float rStrokeSize = random(0.25,3);

void setup() {
  size(1920, 1080);
  smooth();
  frameRate(1000);
}

void draw() {
  background(0);
  translate(width/2, height/2);
  
  float wave = sin(radians(frameCount));
  float w = wave*map(mouseX,0,height,2500,0);
  
  for (int i = 0; i < 500; i++) {
    rotate(50);
    stroke(255);
    line(850, i-w/2, -850, i++);
    strokeWeight(map(wave, -1, 1, 0.5, rStrokeSize));
    stroke(rStroke);
    strokeWeight(map(wave, -1, 1, 0.5, rStrokeSize));
    line(-850, -i+w, 550, i++);
    stroke(rStroke, rStroke, 0);
    strokeWeight(map(wave, -1, 1, 0.5, rStrokeSize));
    line(-850, i-w, 850, i++);
  }
} 
