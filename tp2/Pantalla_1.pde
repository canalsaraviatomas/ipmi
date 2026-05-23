// ---------------- PANTALLA 1 ----------------

void pantalla1() {

  image(img1, 0, 0, width, height);


  // ESCALA TITULO
  if (escalaTitulo < 1) {
    escalaTitulo += 0.02;
  }


  pushMatrix();

  translate(width/2, height/2);

  scale(escalaTitulo);


  fill(120, 0, 20);

  textSize(90);

  text("GORILLAZ", 0, 0);

  popMatrix();
}
