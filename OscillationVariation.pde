// Based on examples from Dan
// Shiffman's Learning
// Processing and Nature of Code

float r = 150;
float a = 0.0;
float aVel = 0.0;
float aAcc = 0.001;
float time =  0.0;
float increment = 0.01;

void setup() {
  size(640, 360);
}

void draw() {
  background(0);
  
  r = noise(time)*width;
  time += increment;
  
  translate(width/2, height/2);
  float x = r * cos(a);
  float y = r * sin(a);
  fill(255);
  stroke(255);
  line(0,0,x,y);
  ellipse(x,y,50,50);
  
  a+=aVel;
  aVel+=aAcc;
  aVel=constrain(aVel, 0, 0.1);
}
