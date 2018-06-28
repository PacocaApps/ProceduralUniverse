import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class ProceduralUniverse extends PApplet {

// VARIABLES DEFINITION
int page = 1;
int timeVar = 0;
int starNumber = 100;
int selectedStar;
Star[] starArray = new Star[starNumber];
Planet[] planetArray;



public void setup(){
rectMode(CENTER);


for(int i = 0; i < starArray.length;i++){
starArray[i] = new Star();
}



}
public void draw(){

  timeVar = timeVar + 1;

// CHECK SCREEN

if(page == 0){

Start(timeVar);
}
if(page == 1){
startStarmap();

}
if(page == 2){

startSystemMap(selectedStar);
}
if(page == 3){

drawPlanet();

}










}
class Star{
float x = random(0,width);
float y = random(0,height);
float size = random(0,10);
String[] startypes = {"Brown Dwarf","Red Dwarf","Main Sequence K","Main Sequence G","Red Giant","Blue Giant"};
int rdn = floor(random(0,startypes.length));
String starType = startypes[rdn];
int r;
int g;
int b;
int r1;
int g1;
int b1;

int numPlanets = floor(random(0,10));
public void display(){

if(starType == "Brown Dwarf"){
  r = 255;
  g = 127;
  b = 0;

  r1 = 255;
  g1 = 127;
  b1 = 0;

}else if(starType == "Red Dwarf"){
r = 255;
g = 0;
b = 0;

r1 = 255;
g1 = 0;
b1 = 0;
}else if(starType == "Main Sequence K"){
r = 255;
g = 255;
b = 255;

r1 = 255;
g1 = 255;
b1 = 255;
}else if(starType == "Main Sequence G"){
fill(255,170,0,size*10);
r = 255;
g = 170;
b = 0;
r1 = 255;
g1 = 255;
b1 = 140;
}else if(starType == "Red Giant"){
r = 255;
g = 0;
b = 0;

r1 = 255;
g1 = 140;
b1 = 140;
}else if(starType == "Blue Giant"){
r = 0;
g = 170;
b = 255;

r1 = 255;
g1 = 255;
b1 = 255;

}







noStroke();
fill(r,g,b,size*16);
ellipse(x,y,size+2,size+2);
fill(r1,g1,b1,size*20);
ellipse(x,y,size,size);

}
}
int r;
int g;
int b;
int r1;
int g1;
int b1;





public void setupsytemMap(int number){

  planetArray = new Planet[number];
  for(int y  = 0; y < number; y++){
    planetArray[y] = new Planet();



  }
}






public void startSystemMap(int star1){

String starType = starArray[star1].starType;
int planetNum = starArray[star1].numPlanets;

background(0);



if(starType == "Brown Dwarf"){
  r = 255;
  g = 127;
  b = 0;

  r1 = 255;
  g1 = 127;
  b1 = 0;

}else if(starType == "Red Dwarf"){
r = 255;
g = 0;
b = 0;

r1 = 255;
g1 = 0;
b1 = 0;
}else if(starType == "Main Sequence K"){
r = 255;
g = 255;
b = 255;

r1 = 255;
g1 = 255;
b1 = 255;
}else if(starType == "Main Sequence G"){

r = 255;
g = 170;
b = 0;
r1 = 255;
g1 = 255;
b1 = 140;
}else if(starType == "Red Giant"){
r = 255;
g = 0;
b = 0;

r1 = 255;
g1 = 140;
b1 = 140;
}else if(starType == "Blue Giant"){
r = 0;
g = 170;
b = 255;

r1 = 255;
g1 = 255;
b1 = 255;

}




fill(r,g,b);




ellipse(width/2,height/2,50,50);


fill(255,0,0);
rect(width-50,0,100,100);


for(int y  = 0; y < planetNum; y++){

  planetArray[y].display();



  float scl = planetArray[y].scl;
  float xs = planetArray[y].x;
  float ys = planetArray[y].y;
  if(mouseX > xs - 4*scl && mouseX < xs + 4*scl){
  if(mouseY > ys - 4*scl && mouseY < ys + 4*scl){
fill(255);
text("World Type: "+ planetArray[y].planetType,width/9,height/8);
//CALL PLANET GENERATION MODULE
if(mousePressed == true){
setupPlanetSeed(y,planetArray[y].planetType);
page = 3;




}
  }
}



}



if(mousePressed == true){

if(mouseX > width-100 && mouseX < width){
if(mouseY > 0 && mouseY < 100){
page = 1;

}

}

}




}
public void Start(int diminish){
  background(0);


if(diminish < 300){
fill(0,255,255,diminish);
textSize(72);
text("Paçoca Apps Presents",width/2-width/5,height/2);
}else if(diminish > 300 && diminish < 600){
fill(0,255,255,diminish-300);
  textSize(72);
  text("STAR WHYBLES",width/2-width/7,height/2);

}else if(diminish > 600){
  page = 1;
}

}
class Planet{


String[] planetTypes = {"Cold","Barren","Terran","Lava"};
int rdn = floor(random(0,planetTypes.length));
String planetType = planetTypes[rdn];
float scl = 5;
float x = random(0,width-100);
float y = random(0,height-100);
int r1;
int r2;

int g1;
int g2;

int b1;
int b2;

int brr = floor(random(0,255));
int brg = floor(random(0,255));
int brb = floor(random(0,255));
public void Planet(){


}

public void display(){


if(planetType == "Cold"){
r1 = 0;
g1 = 0;
b1 = 150;

r2 = 0;
g2 = 170;
b2 = 170;
}else if(planetType == "Barren"){
  r1 = brr;
  g1 = brg;
  b1 = brb;

  r2 = r1*2;
  g2 = g1*2;
  b2 = b1*2;

}else if(planetType == "Terran"){

  r1 = 0;
  g1 = 255;
  b1 = 0;

  r2 = 0;
  g2 = 100;
  b2 = 190;
}else if(planetType == "Lava"){
  r1 = 255;
  g1 = 0;
  b1 = 0;

  r2 = 100;
  g2 = 100;
  b2 = 0;

}





fill(r1,g1,b1);
rect(x,y,scl,scl);
fill(r2,g2,b2);
rect(x+scl,y,scl,scl);
fill(r2,g2,b2);
rect(x,y+scl,scl,scl);
fill(r1,g1,b1);
rect(x+scl,y+scl,scl,scl);
}






}
public void setupPlanetSeed(int number,String type){



}
public void drawPlanet(){
background(0);
fill(255);




  beginShape();
  vertex(30, 20, -50);
  vertex(85, 20, -50);
  vertex(85, 75, -50);

  endShape();


  beginShape();

  vertex(85, 20, -50);
  vertex(85, 75, -50);
  vertex(30, 75, -50);
  endShape();

}
public void startStarmap(){
  PImage img;
  img = loadImage("limg.png");
background(0);
for(int i = 0; i < starArray.length;i++){
  starArray[i].display();
  float scl = starArray[i].size;
  float xs = starArray[i].x;
  float ys = starArray[i].y;
  if(mouseX > xs - scl && mouseX < xs + scl){
if(mouseY > ys - scl && mouseY < ys + scl){
   fill(255);
   textSize(48);
   text(starArray[i].starType+" Has: "+starArray[i].numPlanets+" planets",width/20,height/19);
   if(mousePressed == true){

     setupsytemMap(starArray[i].numPlanets);

selectedStar = i;
page = 2;


   }
 }
  }



}








 image(img, width/2-200, 0,400,250);





}
  public void settings() { 
fullScreen(P3D); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "ProceduralUniverse" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
