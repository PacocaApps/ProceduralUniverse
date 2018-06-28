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
void Planet(){


}

void display(){


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
