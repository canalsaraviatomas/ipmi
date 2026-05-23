// ---------------- PANTALLA 3 ----------------

void pantalla3() {

  image(img3, 0, 0, width, height);


  // APARECER SUAVEMENTE TEXTO BOTON
  if (alphaBoton < 255) {
    alphaBoton += 3;
  }


  // BOTON
  fill(120, 0, 20);

  rect(200, 300, 240, 60, 12);


  fill(255, alphaBoton);

  textSize(22);

  text("MOSTRAR INTEGRANTES", width/2, 330);


  // SI HIZO CLICK
  if (mostrarInfo) {

    fill(0, 180);

    rect(120, 140, 400, 120, 15);


    fill(255);

    textSize(24);

    text("2-D  |  Murdoc", width/2, 180);

    text("Noodle  |  Russel", width/2, 220);
  }
}
