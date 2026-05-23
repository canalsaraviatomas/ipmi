// ---------------- PANTALLA 5 ----------------

void pantalla5() {

  image(img5, 0, 0, width, height);


  // CREDITOS BAJANDO
  creditosY++;


  fill(255);

  textSize(38);

  text("GRACIAS", width/2, creditosY);

  textSize(24);

  text("TP2 IPMI - Gorillaz", width/2, creditosY + 70);

  text("Tomás Canal Saravia", width/2, creditosY + 120);


  // BOTON
  fill(120, 0, 20);

  rect(botonX, botonY, botonW, botonH, 10);


  fill(255);

  textSize(20);

  text("REINICIAR", width/2, 405);
}
