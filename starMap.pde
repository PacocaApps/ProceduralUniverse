void startStarmap(){
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
