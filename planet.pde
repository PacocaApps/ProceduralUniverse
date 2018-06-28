class Planet{


String[] planetTypes = {"Cold","Barren","Terran","Lava"};
int rdn = floor(random(0,planetTypes.length));
String planetType = planetTypes[rdn];
float scl = 5;
float x = random(0,width);
float y = random(0,height);



void Planet(){



}

void display(){








fill(255,0,0);
rect(x,y,scl,scl);
fill(255,255,0);
rect(x+scl,y,scl,scl);
fill(255,0,255);
rect(x,y+scl,scl,scl);
fill(0,255,0);
rect(x+scl,y+scl,scl,scl);
}






}
