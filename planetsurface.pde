import queasycam.*;

QueasyCam cam;


int cols, rows;
int scl = 20;
int w = 2000;
int h = 1600;
float terrainL = 0.2;
float flying = 0;

float[][] terrain;
String planetType;
void setupPlanetSeed(int number,String type){
  planetType = type;
  cam = new QueasyCam(this);
  	cam.speed = 5;              // default is 3
  	cam.sensitivity = 0.5;
  cols = w / scl;
  rows = h/ scl;
  terrain = new float[cols][rows];

}
void drawPlanet(){
//  flying -= 0.1;

   float yoff = 0;
   for (int y = 0; y < rows; y++) {
     float xoff = 0;

     for (int x = 0; x < cols; x++) {

       if(planetType == "Cold"){
           terrainL = 10;
       }else if(planetType == "Barren"){
          terrainL = 0.08;

       }else if(planetType == "Terran"){

      terrainL = 0.1;
       }else if(planetType == "Lava"){
        terrainL = 0.2;

       }



       terrain[x][y] = map(noise(xoff, yoff), 0, 1, -100, 100);
       xoff += terrainL;
     }
     yoff += terrainL;
   }



   background(0,255,255);
   // stroke(255);
noStroke();

   translate(width/2, height/2+50);
   rotateX(PI/3);
   translate(-w/2, -h/2);


   for (int y = 0; y < rows-1; y++) {


     beginShape(TRIANGLE_STRIP);
     for (int x = 0; x < cols; x++) {







       if(planetType == "Cold"){

fill(0,100,100);


       }else if(planetType == "Barren"){
                    if(terrain[x][y] > 40){

                                 fill(150,0,0);
                     }else if(terrain[x][y] < 40 && terrain[x][y] > 0){
                      fill(10*terrain[x][y],50,0);
                      }else{fill(255,170,0);}

                      // END OF Barren TYPE

       }else if(planetType == "Terran"){

                  if(terrain[x][y]> 40){

                    fill(170,170,170);
                  } else if(terrain[x][y] < 40 && terrain[x][y] > 0){

                    fill(50,10*terrain[x][y],0);
                  }else if(terrain[x][y]<0){
                    fill(0,0,255);
                  }



       }else if(planetType == "Lava"){
fill(255,0,0);

       }













       vertex(x*scl, y*scl, terrain[x][y]);
       vertex(x*scl, (y+1)*scl, terrain[x][y+1]);
       //rect(x*scl, y*scl, scl, scl);
     }
     endShape(CLOSE);
   }


}
