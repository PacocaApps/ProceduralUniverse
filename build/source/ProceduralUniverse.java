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

Star[] starArray = new Star[starNumber];




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
 }
  }



}








 image(img, width/2-200, 0,400,250);













}
  public void settings() { 
fullScreen(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "ProceduralUniverse" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
