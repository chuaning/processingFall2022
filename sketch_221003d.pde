void setup( ){
  size(600,600);
  
}
void draw(){
  background(255);
  wallDrawing();
  noStroke();
  //fill(255,255,mouseX/5);
  //rect(200,200,200,200);
  //saveFrame("xxx.png");
}

void wallDrawing(){
 
  for(int i=0;i<10;i++){
    for(int j=0;j<6;j++){
      fill(mouseX/(j+1)+mouseY/(10-i),mouseX/5,mouseY/5);
      rect(60*i+10*j,0,mouseX/(10+10*i),600);
      if(60*i+10*j>=200&&60*i+10*j<=400){
      
      fill(mouseX/(j+1)+mouseY/(10-i),mouseX/5,mouseY/5);  
      rect(200,60*i+10*j,200,mouseX/(10+10*i));}
      saveFrame("#####.png");
      }
       //stroke(21*i,20,40*i);
       //line(mouseX*i,0,0,mouseY);
     
  }
}
  
