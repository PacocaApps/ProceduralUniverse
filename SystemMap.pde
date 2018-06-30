int r;
int g;
int b;
int r1;
int g1;
int b1;





void setupsytemMap(int number){

  planetArray = new Planet[number];
  for(int y  = 0; y < number; y++){
    planetArray[y] = new Planet();



  }
}






void startSystemMap(int star1){

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
setupPlanetSeed(y,planetArray[y].planetType,planetArray[y].brr,planetArray[y].brg,planetArray[y].brb);
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
