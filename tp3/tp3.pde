// obra de MARIO BALLOCCO   
//https://youtu.be/i8wx-lg-8IY
PImage img;
int diameter = 70;
color colorEllip1;
color colorEllip2;

void setup() {
  size(800, 400);
  img = loadImage("art.jpg");
  colorEllip1 = color(#EDE3F5);
  colorEllip1 = color(#F5E3E4);
  noStroke();
}

void draw() {
  background(#E3E8E3);
   
  // Dibuja la imagen 
 image(img, 1, 1, 400, 400);
  
  // Rectángulos 1 
  
   fill(159, 184, 234);
  rect( 750, 35, width+40, 40);
  rect( 630, 135, width+135, 40);
  rect(535,235, width+235, 40);
  rect(440, 330, width+330, 40);
  rect(440, height - 40, 40, 40);
  rect(535, height - 135, 40, 135);
  rect(630, height - 235, 40, 235);
  rect(725, height - 330, 40, 330);
 // Rectángulos 2
 
  fill(214, 147, 147); 
  rect(400, 35, 330, 40);
  rect(400, 135, 235, 40);
  rect(400, 235, 135, 40);
  rect(400, 330, 40, 40);
  rect(440, 0, 40, 330);
  rect(535, 0, 40, 235);
  rect(630, 0, 40, 135);
  rect(725, 0, 40, 40);
  
  
 
  
  // Dibujar elipses utilizando un bucle for
  fill(216, 212, 212);
  for (int i = 0; i < 4; i++) {
    fill(216, 212, 212);
    int x = 460 + i * 95; // 460, 555, 650, 745 en el eje x
     fill(colorEllip1);
    drawEllipse(x, 55, diameter);
    fill(colorEllip1);
    drawEllipse(x, 155, diameter);
    fill(colorEllip1);
    drawEllipse(x, 255, diameter);
    fill(colorEllip1);
    drawEllipse(x, 355, diameter);
    fill(colorEllip2);
  }
}

void drawEllipse(int x, int y, int diameter) { //<>//
  ellipse(x, y, diameter, diameter);
}
void mouseMoved(){
   colorEllip1 = color(255 * (1- mouseX / float(width)));
  colorEllip2 = color(255 * (mouseX / float(width)));
}
