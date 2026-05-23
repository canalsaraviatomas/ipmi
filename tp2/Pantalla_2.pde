// ---------------- PANTALLA 2 ----------------

void pantalla2() {

  image(img2, 0, 0, width, height);


  fill(0, 170);

  rect(70, 140, 500, 180);


  // TEXTO DESDE LA DERECHA
  if (textoX2 > width/2) {
    textoX2 -= 6;
  }


  fill(255);

  textSize(30);

  text("Banda creada en 1998", textoX2, 190);

  textSize(24);

  text("Por Damon Albarn y Jamie Hewlett", textoX2, 240);

  text("Rock - Hip Hop - Electronica", textoX2, 290);
}
