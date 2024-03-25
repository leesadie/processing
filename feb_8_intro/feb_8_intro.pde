
float x = 400;
float y = 400;
float angle = 90;
float dia = 20;

void setup() {
  fullScreen();
  //size(900, 900);
  //surface.setLocation(987, 70);
}

void draw() {
  background(#121212);
  
  translate(width/2, height/2);
  rotate(radians(14.3+angle/3));
  for(float a=0; a<360; a+=10){
    
    pushMatrix();
    if (angle<360) rotate(radians(a)*cos(radians(angle)));
    else rotate(radians(a));
    stroke(#FFFBEB);
    strokeWeight(1);
    line(x*sin(radians(angle)), 0, 0, y-dia/2);
    
    noStroke();
    fill(#FFFBEB);
    ellipse(x*sin(radians(angle)), 0, dia/2, dia/2);
    stroke(#FFFBEB);
    noFill();
    ellipse(0, y, dia, dia);
    popMatrix();
  }
  angle++;
  
}
