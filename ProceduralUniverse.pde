// VARIABLES DEFINITION
int page = 0;
int timeVar = 0;
int starNumber = 100;
int selectedStar;
Star[] starArray = new Star[starNumber];
Planet[] planetArray;



void setup(){
  float fov = PI/3.0;
  float cameraZ = (height/2.0) / tan(fov/2.0);
  perspective(fov, float(width)/float(height),cameraZ/100.0, cameraZ*100.0);
rectMode(CENTER);
fullScreen(P3D);

for(int i = 0; i < starArray.length;i++){
starArray[i] = new Star();
}



}
void draw(){

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
