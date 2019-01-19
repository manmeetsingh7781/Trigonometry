
void drawGraph(){

  background(255);
  drawMap();
  
  // Unit Circle
  drawCircle(originX, originY, 60);
    
  // triangle
  drawTriangle();
  
  
  // show numbers
  drawNumbering();

  
  
  stroke(0, 0, 255);
  fill(255,0,0);
  
  
  // Y
  line(ylineX1, ylineY1, ylineX2, ylineY2);

  
  // X
  line(xlineX1, xlineY1, xlineX2, xlineY2);

  
  
  // origin  
  ellipse(originX, originY, 5, 5);


}


void drawNumbering(){
  
  for(int w = 0; w < screen_height; w+=5){
     fill(0);
     noStroke();
      // UP
     showText(" "+w,  originX, originY - w * 30.2, 220);
     
     rect( originX-10, originY - w * 30, 20, 2);
     
     // DOWN
     showText(" "+w,  originX, originY + w * 30, 220);
     rect( originX-10, originY + w * 30, 20, 2);
     
     // RIGHT
     showText(" "+w,  originX + w * 30.2 , originY , 220);
     rect( originX + w * 30, originY-10, 2, 20);
     // LEFT
     showText(" "+w,  originX - w * 30 , originY , 220);
     rect(  originX - w * 30, originY-10, 2, 20);
}  
  
  
}
void drawMap(){

int[][] position = new int[screen_width][screen_height];
  for(int w = 0; w < position.length; w++){
    for(int h = 0; h < position[0].length; h++){
          noFill();
          stroke(0);
          rect(w*30, h *30, 30, 30);
    }
  }

}
