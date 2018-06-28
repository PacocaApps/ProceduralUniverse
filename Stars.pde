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
void display(){

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
