// https://www.youtube.com/watch?v=Nd-Q2X6eD9c
// tp3 Tomás Canal Saravia 91449/3 - Com3

PImage img;
float tam = 15.35;
float diametro = 5;
color colA = color(0, 104, 139);
color colB = color(31, 200, 131);
color colPunto = color(40, 40, 80);
color colPuntoClaro = color(255);

float anguloInterior = 0;
float anguloOffset = 0;

void setup() {
  size(800, 400);
  img = loadImage("17.jpeg");
}

void draw() {
  background(255);
  anguloInterior = (frameCount * 0.01) - anguloOffset;

  float d = dist(mouseX, mouseY, width/2, height/2);
  float tamPunto = map(d, 0, 300, diametro * 3, diametro);
  pushMatrix();
  translate((width/2) - 7, -7);
  dibujarTablero(27, tam, tamPunto, false);
  pushMatrix();
  float offsetInterior = (27 * tam - 15 * 18) / 2;
  translate(offsetInterior, offsetInterior);
  float centro = (15 * 18) / 2.0;
  translate(centro, centro);
  rotate(anguloInterior);
  translate(-centro, -centro);
  dibujarTablero(15, 18, tamPunto, true);
  popMatrix();
  popMatrix();
  image(img, 0, 0, width/2, height);
}

void dibujarTablero(int cant, float tamCasilla, float diamPunto, boolean esInterior) {
  for (int i = 0; i <= cant; i++) {
    for (int j = 0; j <= cant; j++) {
      float x = i * tamCasilla;
      float y = j * tamCasilla;
      if (i < cant && j < cant) {
        pintarCasilla(i + j, x, y, tamCasilla);
      }
      int s;
      boolean esClaro;
      if (esInterior) {
        s = (i + j + 1) % 8;
        esClaro = (s == 0 || s == 1 || s == 3 || s == 6);
      } else {
        s = ((i + j - 2) % 8 + 8) % 8;
        esClaro = (s == 0 || s == 1 || s == 3 || s == 6);
      }
      if (esClaro) {
        fill(colPuntoClaro);
      } else {
        fill(colPunto);
      }
      noStroke();
      ellipse(x, y, diamPunto, diamPunto);
    }
  }
}

void pintarCasilla(int suma, float x, float y, float tamCasilla) {
  fill(elegirColor(suma));
  noStroke();
  rect(x, y, tamCasilla, tamCasilla);
}

color elegirColor(int suma) {
  if (suma % 2 == 0) return colA;
  else return colB;
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    colA = color(0, 104, 139);
    colB = color(31, 200, 131);
    anguloOffset = frameCount * 0.01;
  }
}

void mousePressed() {
  if (mouseX > width / 2) {
    colA = color(random(255), random(255), random(255));
    colB = color(random(255), random(255), random(255));
  }
}
