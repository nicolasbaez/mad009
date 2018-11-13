float i=0;
void setup() {
  size(512, 256);
  background(255);
  noStroke();
}
void draw() {
  fill(255, 255, 255, 24);
  rect(0, 0, width, height);
  fill(0);
  float diff=width/16;
  float r=height/3;
  float xPos=r*cos(radians(i))+width/2;
  float yPos=r*sin(radians(i))+height/2;
  float v1=random(diff);
  float v2=random(diff);
  float v3=random(diff);
  float v4=random(diff);
  beginShape();
  vertex(xPos-v1, yPos-v1);
  vertex(xPos+v2, yPos-v2);
  vertex(xPos+v3, yPos+v3);
  vertex(xPos-v4, yPos+v4);
  endShape();
  i+=1;
  if (i>=360&&i<=360*2) {
    saveFrame("gif/mad009-######.png");
  }
}
