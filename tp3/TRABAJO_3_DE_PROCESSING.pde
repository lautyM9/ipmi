  
 int cant= 20;
float cant2=20;
  int tamx;
  int tamx2 = 800/cant;
 float color1;
 PImage imagen;
 
 
 
  void setup() {
    size (800,400);
    tamx = 800/cant;
     imagen=loadImage("F_42.png");
     color1=100;
     
  }
 
 
  void draw(){
background(255);
ImagenDeReferencia();
dibujo();
  
  }
  
  
  
  void ImagenDeReferencia(){
    image(imagen,0,0,400,400);
  }
  
void dibujo(){
    for (float x = 10; x<cant; x++){
     for(int y = 0; y<cant; y ++){
if((x+y)%2==0){
  fill(100,0,0);
} else { fill(200,0,0);
}


   rect(x*tamx,y*tamx,tamx,tamx);

     }
    }

  
    for( int cx=10; cx<cant2; cx++){
      for(int cy=0; cy<cant2;cy++){
  
           
           fill(map (cy,0,cant2-1,255,0 ), color1 ,map (cx,0,cant2-1,0,255 ) );
      noStroke();
     float distancia = dist(mouseX,mouseY,cx*tamx2, cy*tamx);
ellipse(cx*tamx2+20,cy*tamx2+20,distancia/25,distancia/25);
      }
    }
    
}

 
  
    
  
