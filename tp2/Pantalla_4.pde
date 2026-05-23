// ---------------- PANTALLA 4 ----------------

void pantalla4() {

  image(img4, 0, 0, width, height);


  fill(0, 180);

  rect(120, 180, 400, 120);


  // TEXTO DESDE IZQUIERDA
  if (textoX4 < width/2) {
    textoX4 += 5;
  }


  fill(255);

  textSize(34);

  text("Feel Good Inc.", textoX4, 220);


  textSize(20);

  text("Uno de sus mayores exitos", textoX4, 260);
}
