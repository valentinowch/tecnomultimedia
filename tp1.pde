//tp1 Comisión 1
//Valentino Gomez Lucastegui 94710/9

int diametro;
boolean presentacion;
String pantalla;
int cuenta;
int pos, tama, opa1, opa2, opa3;
PImage LAGUNA;
PImage BAJADITA;
PImage municipalidad;

void setup() {
  size(640, 480);
  pantalla = "comienzo";
  LAGUNA = loadImage("LAGUNA.jpeg");
  BAJADITA = loadImage("BAJADITA.jpg");
  municipalidad = loadImage("municipalidad.jpg");
  cuenta = 0;
  pos= 480;
  opa1= 0;
  opa2= 0;
  opa3= 0;
  textSize(20);
  diametro = 100;
  presentacion = false;
}


void draw() {
  background(0);
    
  float distancia = dist(mouseX, mouseY, 300, 260);
  if (distancia< diametro/2) {
    fill(195, 195, 195);
  } else {
    fill(129, 129, 129);
  }

  
  rectMode(CENTER);
  rect(280, 240, 150, 70);
  fill(0);
  text("¡VEAMOSLO!", 230, 248);

  if (presentacion==true) {
    background(255);
    fill(255, 255, 255);
    cuenta++;
    if (pantalla.equals("Lugar 1")) { 
      image(LAGUNA, 0, 0, 640, 480);
      textAlign(CENTER);
      fill(0, 0, 0, opa1++);
      text("LA LAGUNA", pos, height/2);
      pos--;
    } else if (pantalla.equals("Lugar 2")) {
      image(municipalidad, 0, 0, 640, 480);
      textAlign(CORNER);
      fill(0, 0, 0, opa2++);
      pos++;
      if (pos >= 250) {
        fill(0, 255, 0);
      }
      text("PALACIO MUNICIPAL", pos/2, pos/2);
    } else if (pantalla.equals("Lugar 3")) { 
      image(BAJADITA, 0, 0, 640, 480);
      
       
      

      fill(255, 0, 0, opa3++);
      if (opa3 >= 150) {
        fill(255, 255, 255);
      }
      text("LA BAJADITA", width/2, 100);
      
    } else if(pantalla.equals("fin")) {
      text("reiniciar", 248, 248);
      background(255);
      rectMode(CENTER);
      rect(290, 240, 220, 110);
      
      
        
      }
     

    fill(255, 255, 255);
    if (cuenta <180) {
      pantalla = "Lugar 1";
    } else if (cuenta >=500 && cuenta < 950) {
      pantalla = "Lugar 2";
    } else if (cuenta >=1100 && cuenta < 1150) {
      pantalla = "Lugar 3";
    } else if (cuenta >=1350) {
      presentacion = false;
      cuenta = 0;
      tama = 0;
      pos =0;
      text("comenzar", 289, 248);
      print(cuenta);
      print(presentacion);
      }
      text(pantalla,150, 400);
     }
   
      
}

void mousePressed(){
  float distancia = dist(mouseX, mouseY, 320, 240);
  if (presentacion==false && distancia< diametro/2) {
    presentacion = true;
    }
}  
