// TP2 Tomás Canal Saravia Com 3 - Gorillaz

PFont fuente;

int pantalla;
int ultimoCambio;
int duracionPantalla;


// ANIMACIONES
float escalaTitulo;

float alphaTexto;

float textoX2;
float textoX4;

float creditosY;

float alphaBoton;


// IMAGENES
PImage img1, img2, img3, img4, img5;


// INTERACCION
boolean mostrarInfo;


// BOTON
int botonX;
int botonY;
int botonW;
int botonH;



void setup() {

  size(640, 480);

  fuente = loadFont("BernardMT-Condensed-48.vlw");

  textFont(fuente);

  textAlign(CENTER, CENTER);


  pantalla = 1;

  ultimoCambio = millis();

  duracionPantalla = 5000;

  escalaTitulo = 0.1;

  alphaTexto = 0;

  textoX2 = 900;

  textoX4 = -300;

  creditosY = -200;

  alphaBoton = 0;


  img1 = loadImage("img1.png");
  img2 = loadImage("img2.jpg");
  img3 = loadImage("img3.jpg");
  img4 = loadImage("img4.jpg");
  img5 = loadImage("img5.jpg");
  
  mostrarInfo = false;
  
  botonX = 220;
  botonY = 380;
  botonW = 200;
  botonH = 50;
  
}



void draw() {

  background(0);

  controlarTiempo();


  if (pantalla == 1) {
    pantalla1();
  }

  else if (pantalla == 2) {
    pantalla2();
  }

  else if (pantalla == 3) {
    pantalla3();
  }

  else if (pantalla == 4) {
    pantalla4();
  }

  else if (pantalla == 5) {
    pantalla5();
  }
}



// ---------------- CONTROL TIEMPO ----------------

void controlarTiempo() {

  if (pantalla < 5) {

    if (millis() > ultimoCambio + duracionPantalla) {

      pantalla++;

      ultimoCambio = millis();


      // RESETEOS
      escalaTitulo = 0.1;

      alphaTexto = 0;

      textoX2 = 900;

      textoX4 = -300;

      creditosY = -200;

      alphaBoton = 0;

      mostrarInfo = false;
    }
  }
}


// ---------------- MOUSE ----------------

void mousePressed() {


  // PANTALLA 3
  if (pantalla == 3 &&
    mouseX > 200 &&
    mouseX < 440 &&
    mouseY > 300 &&
    mouseY < 360) {

    mostrarInfo = true;
  }


  // PANTALLA 5
  if (pantalla == 5 &&
    mouseX > botonX &&
    mouseX < botonX + botonW &&
    mouseY > botonY &&
    mouseY < botonY + botonH) {

    pantalla = 1;

    ultimoCambio = millis();


    // RESETEOS
    escalaTitulo = 0.1;

    alphaTexto = 0;

    textoX2 = 900;

    textoX4 = -300;

    creditosY = -200;

    alphaBoton = 0;

    mostrarInfo = false;
  }
}
