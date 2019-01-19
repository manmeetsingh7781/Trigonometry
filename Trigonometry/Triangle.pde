float x1A = 200, x2A = 500, y1A = 300 , y2A = 300;

float x1B = 200, x2B = 500, y1B = 300 , y2B = 100;

float x1C = 500, x2C = 500, y1C = 100 , y2C = 300;


void drawTriangle(){




   
  // Adjecent
  stroke(0, 255 ,0);
  line(x1A, y1A, x2A, y2A);
  float sin_adj = getDistance(x1A, y1A, x2A, y2A, (x2A-x1A), y1A+font_size);
  

  // Hypotenuse
  stroke(255 ,0, 0);
  line(x1B, y1B, x2B, y2B);
  float sin_hypotenus = getDistance(x1B, y1B, x2B, y2B, (x2B-x1B), -(y2B-y1B)-16);
     
  // Opposite
   stroke(0, 0 ,255);
  line(x1C, y1C, x2C, y2C);
  float sin_opposite = getDistance(x1C, y1C, x2C, y2C, x2C , y2C-y1C);
  

  
  showText(" "+Math.round(degrees(asin(sin_opposite/sin_hypotenus)*100.0))/100.0, x1A+30, y1A-10, 255);
  
  noFill();
  fill(0);
  stroke(0);
  arc(x1A+20, y1A, 20, 20, -2, 0);
  

}



float getDistance(float x1, float y1, float x2, float y2, float posX, float posY){
      float distance;
      distance = sqrt( pow((x2-x1), 2) +  pow((y2-y1), 2) );
      showText(" "+distance, posX, posY, 255);
      return distance;
}



void showText(String text, float x, float y, float st){
     
      font = createFont("Georgia", font_size);
      textFont(font);
      stroke(st);
      text(text , x, y);
}
