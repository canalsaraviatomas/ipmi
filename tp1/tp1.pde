// tp1 Tomás Canal Saravia 91449/3

PImage img;

void setup() {
  size(800, 400); 
  img = loadImage("mural.jpg"); 
}

void draw() {
  background(#CBCAC7);
  
  // MURAL
  image(img, 0, 0, width/2, height);
  
  // FONDO
  fill(#2568b2);
  beginShape();
    vertex(400, 180);
    vertex(446, 152);
    vertex(681, 169);
    vertex(798, 168);
    vertex(798, 303);
    vertex(400, 287);
  endShape();
  
  fill(#ce7434);
  quad(400, 287, 798, 303, 798, 369, 400, 341);
  
  
  // TORSO
  fill(#3cb64a);
  beginShape();
    vertex(615, 294);
    vertex(598, 221);
    vertex(622, 201);
    vertex(603, 189);
    vertex(460 , 168);
    vertex(424, 206);
    vertex(418, 287); 
  endShape();
  
  
  // CABEZA
  fill(#e08b32);
  ellipse(550, 125, 210, 145);
  
  
  // BOCA
  pushStyle();
  strokeWeight(2); 
  line(654, 115, 447, 137);
  popStyle();
  
  
  // NARIZ
  fill(#9052a1);
  rect(544, 88, 25, 50, 20);
  
  
  // OJOS
  fill(255);
  arc(512, 110, 45, 27, PI, TWO_PI);
  arc(597, 108, 45, 27, PI, TWO_PI);
  
  
  // PUPILAS
  fill(100, 200, 255);
  arc(514, 110, 19, 18, PI, TWO_PI);
  arc(598, 108, 19, 18, PI, TWO_PI);  
  
  
  // GORRO
  fill(#36b5ce);
  beginShape();
    vertex(449, 97);
    vertex(544, 91);
    vertex(571, 91);
    vertex(619, 78);
    vertex(629, 72);
    vertex(602, 55);
    vertex(578, 49);
    vertex(534, 49);
    vertex(529, 42);
    vertex(522, 43);
    vertex(526, 50);
    vertex(488, 62);
    vertex(461, 85);
  endShape();
  
  
  // LIBRO
  fill(#a61e22);
  quad(657, 269, 726, 193, 798, 260, 738, 311);
  
  
  // BRAZOS
  fill(#e08b32);
  
  quad(619, 203, 598, 220, 630, 246, 666, 227);
  
  beginShape();
    vertex(430, 230);
    vertex(465, 214);
    vertex(509, 261);
    vertex(549, 271);
    vertex(594, 266);
    vertex(674, 213);
    vertex(685, 211);
    vertex(702, 217);
    vertex(697, 222);
    vertex(691, 220);
    vertex(688, 228);
    vertex(742, 238);
    vertex(742, 248);
    vertex(702, 242);
    vertex(722, 247);
    vertex(749, 250);
    vertex(748, 257);
    vertex(729, 256);
    vertex(694, 251);
    vertex(735, 264);
    vertex(729, 272);
    vertex(682, 256);
    vertex(719, 274);
    vertex(714, 281);
    vertex(668, 266);
    vertex(633, 286);
    vertex(590, 303);
    vertex(512, 298);
    vertex(466, 270);
    vertex(430, 234);
  endShape();
}


void mousePressed(){
  println(mouseX + ", " + mouseY);  
}
