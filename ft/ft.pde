
float dalpha = PI/6;
int len=150;

void setup() {
  size(500,500);
  background(135, 206, 250); //<>//
  translate(width/2,height);
  branch(0,0,0,len);
}

float get_x(float longitud, float angle) {
  return longitud * sin(angle);
}

float get_y(float longitud, float angle) {
  return longitud * cos(angle);
}

void branch(float x0, float y0, float angle, float longitud) {
  if(len < 1) return;
  float x1 = x0 + get_x(longitud, angle);
  float y1 = y0 - get_y(longitud, angle);
  strokeWeight(1.1);
  stroke(135,250,179);
  line(x0,y0,x1,y1);
  
  branch(x1,y1,angle-dalpha,longitud*0.6);
  branch(x1,y1,angle+dalpha,longitud*0.6);
}

void draw() {
  
}
