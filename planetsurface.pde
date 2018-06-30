import queasycam.*;

QueasyCam cam;


int cols, rows;
int scl = 10;
int w = 4000;
int h = 3200;

int limit = 100;
float terrainL = 0.2;
float flying = 0;

int rb;
int gb;
int bb;

int backgroundColorR;
int backgroundColorG;
int backgroundColorB;

float[][] terrain;
String planetType;
void setupPlanetSeed(int number,String type,int r,int g,int b){
rb = r; 
gb = g;
bb = b;


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
backgroundColorR = 0;
backgroundColorG = 0;
backgroundColorB = 0;
       }else if(planetType == "Terran"){
         backgroundColorR = 0;
         backgroundColorG = 150;
         backgroundColorB = 190;
      terrainL = 0.1;
       }else if(planetType == "Lava"){
        terrainL = 0.2;

       }



       terrain[x][y] = map(noise(xoff, yoff), 0, 1, -limit, limit);
       xoff += terrainL;
     }
     yoff += terrainL;
   }



   background(backgroundColorR,backgroundColorG,backgroundColorB);
   // stroke(255);
noStroke();

   translate(width/2, height/2+50);
   rotateX(PI/3);
   translate(-w/2, -h/2);
if(planetType == "Terran"){
fill(0,0,255,50);
beginShape();

vertex(0,0,-10);
vertex(width*1000,0,-10);
vertex(width*1000,height*100,-10);
vertex(0,height*1000,-10);
  endShape(CLOSE);
}

   for (int y = 0; y < rows-1; y++) {


     beginShape(TRIANGLE_STRIP);
     for (int x = 0; x < cols; x++) {







       if(planetType == "Cold"){

fill(0,100,100);


       }else if(planetType == "Barren"){
                    if(terrain[x][y] > 40){

                                 fill(rb,gb,bb);
                     }else if(terrain[x][y] < 40 && terrain[x][y] > 0){
                       double newnoise = Math.pow(terrain[x][y],2);

                       double newnoise2 = Math.sqrt(newnoise);
                             float f = (float)newnoise2;
                      fill(rb*f/40,gb*f/40,bb*f/40);
                      }else if(terrain[x][y] < 0){
                         double newnoise = Math.pow(terrain[x][y],2);

                         double newnoise2 = Math.sqrt(newnoise);
                               float f = (float)newnoise2;
                        fill(rb*f/80,gb*f/80,bb*f/80);
                      }

                      // END OF Barren TYPE

       }else if(planetType == "Terran"){


                  if(terrain[x][y]> 40){

                    fill(170,170,170);
                  } else if(terrain[x][y] < 40 && terrain[x][y] > 0){

                    fill(50,10*terrain[x][y],0);
                  }else if(terrain[x][y] < 0 && terrain[x][y] > -20){
                    fill(255,255,0);
                  }

                    else if(terrain[x][y]<-20){
                    fill(0,0,255);
                  }



       }else if(planetType == "Lava"){





       }













       vertex(x*scl, y*scl, terrain[x][y]);
       vertex(x*scl, (y+1)*scl, terrain[x][y+1]);
       //rect(x*scl, y*scl, scl, scl);
     }
     endShape(CLOSE);
   }


}
