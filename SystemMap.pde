int r;
int g;
int b;
int r1;
int g1;
int b1;

void startSystemMap(int star1){

String starType = starArray[star1].starType;
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












}
