//Lautaro Maidana, COMISION 3. LEGAJO:121133/6

//Enlace VIDEO EXPLICATIVO (actualizado): https://youtu.be/yMlq46omPdE


/*A medida que se acerca el mouse las elipses disminuyen su tamaño
 y al apretar el boton del mouse los casilleros cambian su valor de color "fill"
 de manera random, al soltar el boton los casilleros vuelven a su valor normal.*/

int cant= 20;
float cant2=20;
int tamx;
int tamx2 = 800/cant;
float color1;
PImage imagen;



void setup() {
  size (800, 400);
  tamx = 800/cant;
  imagen=loadImage("F_42.png");
  color1=100;
}


void draw() {
  background(255);
  ImagenDeReferencia();
  dibujo();
}


//se carga la imagen
void ImagenDeReferencia() {
  image(imagen, 0, 0, 400, 400);
}

/*Se crean los ciclos FOR anidados para crear la grilla y un IF para colorear los casilleros como tablero de
 ajedrez. Tambien se crea un if para que al mantener presionado el mouse las casillas cambien de color de forma aleatoria*/

void dibujo() {
  for (float x = 10; x<cant; x++) {
    for (float y = 0; y<cant; y ++) {
      if ((x+y)%2==0) {
        fill(100, 0, 0);
      } else {
        fill(200, 0, 0);
      }
      if (mousePressed) {

        color colorRandom = unColor();
        fill(colorRandom);
       
      }
     rect(x*tamx, y*tamx, tamx, tamx);
    }
  }
    /*se crea un segundo ciclo FOR anidado para las eliseps en cada casillero, se utiliza la función MAP para la variacion de color
     y la función DIST para que cuando el mouse se acerca las elipses disminuyan su tamaño */

    for ( int cx=10; cx<cant2; cx++) {
      for (int cy=0; cy<cant2; cy++) {


        fill(map (cy, 0, cant2-1, 255, 0 ), color1, map (cx, 0, cant2-1, 0, 255 ) );
        noStroke();
        float distancia = dist(mouseX, mouseY, cx*tamx2, cy*tamx);
        ellipse(cx*tamx2+20, cy*tamx2+20, distancia/25, distancia/25);
      }
    }
  }


//se crea la función unColor que arma y devuelve un valor de color aleatorio

color unColor () {
  return color(random(300), random(300), random(300));
}
