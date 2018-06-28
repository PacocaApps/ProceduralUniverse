// VARIABLES DEFINITION
int page = 0;
int timeVar = 0;
int starNumber = 100;
int selectedStar;
Star[] starArray = new Star[starNumber];




void setup(){
rectMode(CENTER);
fullScreen();

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










}
