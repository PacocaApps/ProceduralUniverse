class Enemy{



int x = floor(random(0,600));
int y =  floor(random(0,600));
float z = random(50,200);




void display(){
//float z = terrain[x][y];

translate(x,y,z);
fill(255,0,0);
box(10);



}





}
