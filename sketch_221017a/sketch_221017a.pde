//class Dot {
//  float x, y, z;
//  boolean drilled;

//  Dot(float a, float b, float c) {
//    this.x = a;
//    this.y = b;
//    this.z = c;
//    this.drilled = false;
//  }
//}
import processing.svg.*;

//Global Variables


int maxAgents;
ArrayList agentList;

boolean saveSVG = false;

float rad;

 PImage img1;
 PImage img2;
 void setup(){
   size(600,400);
   background(0);
   img1=loadImage("dxm.jpg");
  // img2=loadImage("cy.jpg");
   //img1.blend(img2,0,0,width,height,0,0,width*2,height*2,ADD);
   maxAgents = 100000;
   agentList = new ArrayList();
   rad = 5;
   img1.resize(width, height);
 
 }
 void draw(){
   background(0);
 
   if(agentList.size() < maxAgents){
    //Agent myAgent = new Agent(new PVector(random(0+rad, width-rad), random(0+rad, height-rad)), rad);
   Agent myAgent = new Agent(new PVector(random(width/2-30, width/2+30), random(height/2-30, height/2+30)), rad);
   agentList.add(myAgent);
 
 }
 
  if (saveSVG) {
    beginRecord(SVG, "output/1.svg");
  }
  
  for(int i = 0; i < agentList.size(); i ++){
    Agent tempAgent = (Agent)agentList.get(i);
    tempAgent.run();
  }
  
  if (saveSVG) {
    endRecord();
    saveSVG = false;
  }

   }
void keyPressed() {
  if (key == 's') {
    save("output/2.png");
  }
  if(key == 'p'){
    saveSVG = true;
  }
}
  // image(img2,100,100,100,100);
   //updatePixels();
 
 
 
