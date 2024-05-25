
//Lautaro Maidana, comision 3,121133/6

//variables
PImage imagen1;
PImage imagen2, imagen3,imagen4;
float opacidadTexto = 255;
String texto1, texto2, texto3;
PFont fuenteNueva;

int estado;
int contador;
float posX, posY;


void setup(){
size(640,480);
textSize(37);

imagen1 = loadImage("imagen2.jpg");
imagen2= loadImage ("imagen1.jpg");
imagen3= loadImage ("imagen3.jpeg");
imagen4=loadImage("imagen4.jpg");
texto1 = "Van Gogh: Experiencia de arte inmersiva";
texto2 = "Se trata de un espectáculo multimedial para todo público, que le permite al espectador adentrarse, literalmente, en las obras de Van Gogh y vivir una experiencia multisensorial acompañada de música y suena una voz que narra la vida y obra del pintor holandés";
texto3= "La exhibición presenta más de 70 obras emblemáticas del artista, combinando tecnología de vanguardia con piezas diseñadas a la perfección. Toda la superficie del salón principal está rodeada de imágenes impresionantes que sumergen a las y los invitados al interior de las pinturas, que cobran vida fuera del marco a través de proyecciones animadas.";

fuenteNueva = loadFont( "Calis.vlw");
textFont ( fuenteNueva);
estado = 1;
  contador = 0;
  posX = 10;
  posY = 20;
 
}
void draw(){
   println("estado="+estado);
   background(0);


 if ( estado == 1 ) {
    //pantalla 1
    image( imagen1, 0, 0, width, height);
    fill(255);
    textSize(48);
    text ( texto1, posX, posY, 600, 200);
contador++;
if ( contador>=200 ) {
      estado++;
      contador = 0;
    }
 }
 else if(estado==2){
   //transición 
   image( imagen1, 0, 0, width, height);
    fill(255);
    textSize(48);
    text ( texto1, posX, posY, 600, 200);
   posX+=3;
    if (posX>=width) {
     
      estado = 3;
      contador = 0;
      posX = 20;
      posY = 320;
 }
 }
 //Pantalla 2
 else if(estado==3) {
    image( imagen2, 0, 0, width, height);
    fill(255);
    textSize(20);
    text ( texto2, posX, posY, 600, 200);
    contador++;
if ( contador>=300 ) {
     
      estado++;
      contador = 0;
 }
 }
 //Transición
 else if(estado==4){
  image( imagen2, 0, 0, width, height);
    fill(255);
    textSize(20);
    text ( texto2, posX, posY, 600, 200);
   posY+=5;
 if(posY>=height) {
     
      estado = 5;
      contador = 0;
      posX = 20;
      posY = 320;
 }
}
//Pantalla 3
else if(estado==5){
  image( imagen3, 0, 0, width, height);
    fill(255);
    textSize(20);
    text ( texto3, posX, posY, 600, 200);
  contador++;
 if ( contador>=300 ) {
     
      estado++;
      contador = 0;
}
}
//Transición 
 else if ( estado == 6 ) {
    image( imagen3, 0, 0, width, height);
    fill(255,opacidadTexto);
    textSize( map(opacidadTexto,255,0,48,0 ) );
    text ( texto3, posX, posY,600,200);

   opacidadTexto-=7;
    if (opacidadTexto<=0) {
      estado = 7;
      contador = 0;
      posX = 30;
      posY = 20;
      opacidadTexto = 255;
}
     
}
//Pantalla 4
else if ( estado == 7 ) {
    image(imagen4, 0, 0, width, height);
    
    if ( mouseX>450 && mouseX<450+160
      && mouseY >350 && mouseY<350+50 ) {
      fill(#1203FF);
    } 
    else {
      fill(0);
    }
    rect( 450, 350, 160, 50);
fill(255);
textSize(20);
    text("REINICIAR",480,370,160,50);
    textSize(10);
    text("Lautaro Maidana",20,450);
}
}


void mousePressed() {
  if ( estado==7) {
    if ( mouseX>450 && mouseX<450+160
      && mouseY >350 && mouseY<350+50 ) {
      estado = 1;
    }
  } else {
    estado++;
    contador = 0;
    posX = 20;
  }
}
  
 


    
    
    
    
    
    
    
    
 
