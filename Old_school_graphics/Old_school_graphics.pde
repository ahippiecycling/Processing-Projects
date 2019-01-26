float t, lines, a, b;

void setup() {
  smooth(100);
  size(500, 500);
  background(163, 163, 194);
}

void draw() {
  background(163, 163, 194);
  strokeWeight(2);
  translate (width/2, height/2);
  
   for (int i=0; i<lines; i++){
     stroke (0);
     line(x1(t+i), y1(t+i), x2(t+i), y2(t+i));
       
  } 
      for (int j=0; j<lines; j++){
        stroke (255, 102, 179);
     line(w2(t+j), r2(t+j), w1(t+j), r1(t+j));
       
  }
    t += 0.5;
}
void mousePressed () {
   a = random(20, 100);
   b = random(20, 100);
   lines = random(5, 30);
  }

float x1 (float t) {
  return sin(t/10)*b + cos(t/20)*b;
}
  
float y1 (float t){
  return cos(t/10)*b + sin(t/10)*b ;
}

float x2 (float t) {
  return sin(t/10)*b + cos(t/10)*a;
}
  
float y2 (float t){
  return cos(t/10)*a + cos(t/10)*a;
}

float w1 (float t) {
  return sin(t/10)*a+b;
}
  
float r1 (float t){
  return cos(t/10)*b;
}

float w2 (float t) {
  return sin(t/10)*b + sin(t/10)*b;
}
  
float r2 (float t){
  return cos(t/10)*b + sin(t/10)*b;
}
