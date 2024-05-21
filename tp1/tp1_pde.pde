PImage img;

void setup () {
  size(800, 400);
  img =loadImage("imagen.png");
}

//fondo de la imagen negro
void draw() {
  background(0);
  image(img, 400, 0, 400, 400);
  //contorno de la piedra 
stroke(150, 150, 155); 
  line(169, 400, 180, 379);
line(180, 379, 188, 345);
line(188, 345, 195, 330);
line(195, 330, 206, 315);
line( 206, 315, 250, 297);
line(282, 288, 301, 281);
line(301,281, 325, 277);
line(325, 277, 349, 267);
line(349, 267, 400, 287);

 //vorde de la espada incrustada
 
line(206, 334, 235, 323);
line(235, 323, 259, 310);
line(259, 310, 270, 301);
line(270, 301, 293, 292);

//contorno de la piedra

fill(203, 197, 197);
quad(194, 339, 182, 400, 400, 330, 400, 400);

fill(203, 197, 197);
triangle(194, 339, 288, 367, 400, 330);

fill(203, 197, 197);
triangle(288, 365, 178, 400, 288, 400);

fill(203, 197, 197);
triangle(288,365, 288, 400, 400, 400);


fill(198, 190, 190);
triangle(350, 267, 400, 284, 206, 334);

fill(216, 212, 212);
triangle(400, 274, 400, 337, 200, 337); 

// espada filo uno
fill(75, 68, 68);
quad(173, 144, 182, 139, 275, 295, 271, 301); 

 quad(173, 144, 276, 300, 164, 144, 265, 305);

quad(265, 305, 276, 300, 164, 144, 150, 150);

     
//guarda de la espada 

fill(188, 186, 186);
 float angulo = radians(25);
ellipse(164, 140, 55, 15);

//segunda guarda 

fill(188, 186, 211);
quad(112, 148, 211, 112, 208, 100,  106, 137);
quad(112, 148, 106, 137, 91, 143, 97, 149);

fill(172, 169, 206);
quad(142, 126, 160, 118, 100, 30, 84, 34);

//pomo de la espada  y decoraciones 
fill(162, 162, 165);
 line(151, 106, 151, 118);
  line(141, 92, 143, 124);
  line(135, 77, 131, 108);
  line(111, 71, 108, 37);
  line(96, 31, 91, 43);
  
  line(123, 63, 118, 84);
  line(100, 51, 102, 34);
  line(86, 37, 112, 48);
  line(93, 48, 123, 63);
  line(113, 77, 144, 94);
  line(128, 103, 149, 117);
  
  //centro de la enpuñadura 
  fill(0);
  strokeWeight(1.5); // Grosor de la línea
  line(123, 63, 118, 84);
  
  
  


  println("X: " + mouseX);
  println("Y: " + mouseY);
}
