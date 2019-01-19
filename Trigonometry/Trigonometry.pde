int font_size = 16;
PFont font;
int screen_width, screen_height;
int originX, originY;
float ylineX1, ylineY1, ylineX2, ylineY2;
float xlineX1,  xlineY1 , xlineX2, xlineY2;



void setup(){
  
  screen_width = width;
  screen_height  = height;
  originX = screen_width/2;
  originY = screen_height/2;
  ylineX1 = originX; ylineY1 = 0; ylineX2 = originX; ylineY2 = originX*2;
  xlineX1 = 0; xlineY1 = originY; xlineX2 = originX*2; xlineY2 = originY;
  
 size(900,900);
  
}


void draw(){
drawGraph();  
int xVal = originX - (mouseX);
int yVal = originY - (mouseY);
showText("X = "+xVal, 10, 20, 255);
showText("Y = "+yVal, 10, 40, 255);
}
