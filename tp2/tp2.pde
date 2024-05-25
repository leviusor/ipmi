PImage img1, img2, img3, img4, img5,img6;
int pantalla = 0;
int anchoBoton = 100;
int altoBoton = 50;
int botonX;
int botonY;
int tiempoEntreImagenes = 410;
int tamFont = 20; 
int alpha = 0; 
PFont customFont;
int posX;
float escala = 1.0; 
boolean aumentando = true; 

void setup() {
  size(640, 480);
 
  img1 = loadImage("IMG_2.png");
  img2 = loadImage("IMG_4.png");
  img3 = loadImage("IMG_5.png");
  img4 = loadImage("IMG_12.png");
  img5 = loadImage("IMG_3.png");
  img6 = loadImage("IMG_1.png");
  
  botonX = width - anchoBoton - 10; 
  botonY = height - altoBoton - 10;
  
  frameRate(52);
  customFont = loadFont("Boo.vlw");
  textFont(customFont);
  
  posX = width + 300; 
}

void draw() {
  background(255);
  textAlign(CENTER, CENTER); 
  textSize(2);
  fill(0, 245, 255); 
  
  if (pantalla == 0) {
    image(img1, 0, 0, width, height);
    posX -= 3; 
    if (posX < -300) posX = width + 300; 
    
    fill(5,5,5);
    textSize(22);
    
    text("Mi magia es no rendirme, \n ¿QUE ES BLACK CLOVER ?", posX, height / 2);
  } else if (pantalla == 1) {
    image(img2, 0, 0, width, height);
    alpha += 2; 
    
    if (alpha > 255) alpha = 255;
    
    fill(242, 242, 242, alpha); 
    textSize(20);
    
    text("Black Clover, (Burakkukurōbā)」es un manga escrito e ilustrado, \n por Yūki Tabata, \n Comenzó a publicarse el 16 de febrero de 2015, \n en el 12° del Weekly Shonen Jump, \n La historia se centra en géneros de fantasía, aventura y comedia, \n manteniendo la demografía de \n Young Boys\n 「 少年 Shōnen 」.", width / 2, height / 2);
  } else if (pantalla == 2) {
    image(img3, 0, 0, width, height);
    alpha += 2; 
    
    if (alpha > 255) alpha = 255;
    
    fill(242, 242, 242, alpha); 
    textSize(20);
    
    text("Asta y Yuno son huérfanos, ,\n criados en las afueras del Reino del Trébol. ,\n En un mundo en el que las personas nacen con un poder mágico \n que les permite utilizar la magia,\n Asta nació sin ninguna de ellas. ", width / 2, height / 2);
  } else if (pantalla == 3) {
   
    image(img4, 0, 0, width, height);
    alpha += 2; 
    
    if (alpha > 255) alpha = 255;
    
    fill(242, 242, 242, alpha); 
    textSize(20);
    
    text("Por el contrario, Yuno nació como un prodigio, \n con un poder mágico superior al promedio y, \n  el talento para controlarlo.", width / 2, height / 2);
  } else if (pantalla == 4) {
  image(img6, 0, 0, width, height);
    escala += 0.01; 
    if (escala > 1.5) escala = 0.5; 
    pushMatrix();
    translate(width / 2, height / 2);
    scale(escala);
    fill(211, 185, 179);
    textSize(19);
    text("La historia sigue a Asta y Yuno mientras entrenan, \n  para ser cada vez mas fuertes y asi convertirse en, \n el Rey Mago. ", 0, 0);
    popMatrix();
  
   
  } else if (pantalla == 5) {
    image(img5, 0, 0, width, height);
    textSize(tamFont);
    fill(178, 97, 97);
    text("Supera tus límites. \n El camino se abrirá para ti", width / 2, height / 2);
    if (aumentando) {
      tamFont += 2;
      if (tamFont > 60) aumentando = false;
    } else {
      tamFont -= 2;
      if (tamFont < 30) aumentando = true;
    }
    
    fill(200);
    rect(botonX, botonY, anchoBoton, altoBoton);
    fill(0);
    textSize(17);
    textAlign(CENTER, CENTER);
    text("Reiniciar", botonX + anchoBoton / 2, botonY + altoBoton / 2);
  }
  
  if (frameCount % tiempoEntreImagenes == 0 && pantalla < 5) {
    pantalla++;
    posX = width + 300; 
    alpha = 0; 
    escala = 1.0;
    tamFont = 20; 
    aumentando = true;  
  }
}

void mousePressed() {
  if (pantalla == 5) {
    if (mouseX > botonX && mouseX < botonX + anchoBoton && 
        mouseY > botonY && mouseY < botonY + altoBoton) {
      reiniciar();
    }
  }
}

void reiniciar() {
  pantalla = 0;
  frameCount = 0;
  posX = width + 300;
  alpha = 0; 
  escala = 0.6; 
  tamFont = 20; 
  aumentando = true; 
}
