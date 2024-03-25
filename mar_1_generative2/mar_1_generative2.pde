
void setup() {
  size(800, 800);
  background(#eeeeee);
  //noLoop();
}

void draw() {
  background(#ffffff);
  translate(width/2,height/2);
  for(int a=0; a<360; a+=1){
    float x = random(50,150);
    float xx = random(150,350);
    pushMatrix();
    rotate(radians(a));
    strokeCap(CORNER);
    strokeWeight(2);
    stroke(40);
    line(x,0,xx,0);
    popMatrix();
  }
  saveFrame("output1/image####.png");
}
void keyPressed(){
  redraw();

}
