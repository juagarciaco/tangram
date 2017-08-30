float[] rojo = {800, 225, 650, 150, 800, 300, 950, 150};
float[] morado = {875, 300, 950, 450, 800, 300, 950, 150};
float[] verde = {875, 412.5, 950, 450, 800, 450, 875, 375};
float[] naranja = {800, 375, 800, 450, 875, 375, 800, 300, 725, 375};
float[] rosado = {762.5, 300, 725, 225, 800, 300, 725, 375};
float[] amarillo = {687.5, 262.5, 725, 225, 725, 375, 650, 300, 650, 150};
float[] azul = {687.5, 412.5, 800, 450, 650, 450, 650, 300};
color rojorgb = color(178, 34, 34);
color moradorgb = color(128, 0, 128);
color verdergb = color(124, 252, 0);
color naranjargb = color(255, 140, 0);
color rosadorgb = color(240, 128, 128);
color amarillorgb = color(255, 255, 0);
color azulrgb = color(100, 149, 237);
color color_figura;
boolean seleccion = false;

void setup() {
  size(1050, 600);
  frameRate(120);
}

void draw() {
  if (mousePressed && (mouseButton == RIGHT)) {
    if (seleccion == false) {
      color_figura = get(mouseX, mouseY);
      seleccion = true;
    } else {
      if (color_figura == amarillorgb) {
        float x = mouseX;
        float y = mouseY;
        amarillo[0] = x;
        amarillo[1] = y;
        color_figura = color(0);
      }
      seleccion = false;
    }
  } else if (mousePressed && (mouseButton == LEFT)) {
    if (seleccion == true) {
    }
  } else {
    if (color_figura == amarillorgb) {
      background(200);
      amarillo[0] = mouseX;
      amarillo[1] = mouseY;
      amarillo[2] = mouseX+37.5;
      amarillo[3] = mouseY-37.5;
      amarillo[4] = mouseX+37.5;
      amarillo[5] = mouseY+112.5;
      amarillo[6] = mouseX-37.5;
      amarillo[7] = mouseY+37.5;
      amarillo[8] = mouseX-37.5;
      amarillo[9] = mouseY-112.5;
    }
    fill(rojorgb);
    triangle(rojo[2], rojo[3], rojo[4], rojo[5], rojo[6], rojo[7]);
    fill(moradorgb); 
    triangle(morado[2], morado[3], morado[4], morado[5], morado[6], morado[7]); 
    fill(verdergb);
    triangle(verde[2], verde[3], verde[4], verde[5], verde[6], verde[7]); 
    fill(naranjargb);
    quad(naranja[2], naranja[3], naranja[4], naranja[5], naranja[6], naranja[7], naranja[8], naranja[9]); 
    fill(rosadorgb);
    triangle(rosado[2], rosado[3], rosado[4], rosado[5], rosado[6], rosado[7]); 
    fill(amarillorgb);
    quad(amarillo[2], amarillo[3], amarillo[4], amarillo[5], amarillo[6], amarillo[7], amarillo[8], amarillo[9]);
    fill(azulrgb);
    triangle(azul[2], azul[3], azul[4], azul[5], azul[6], azul[7]);
  }
}