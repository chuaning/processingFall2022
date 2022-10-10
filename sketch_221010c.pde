int x1=200;
int y1=100;
int x2=200;
int y2=300;
int x3=200;
int y3=400;
int x4=200;
int y4=700;
int x5=350;
int y5=100;
int x6=350;
int y6=400;
int x7=350;
int y7=700;
int x8=500;
int y8=100;
int x9=650;
int y9=400;
int x10=650;
int y10=700;
int x11=800;
int y11=100;
int x12=800;
int y12=400;
int x13=800;
int y13=700;
int a=1;
int b=0;
int c=0;
int d=0;

void setup(){
  size(1000,800);
  background(255);
    
}
void draw(){
  strokeWeight(20);
  fill(255);
 // y3=mouseY;
  drawline();
  if(mouseX>400){
    a=d=0;b=c=1;}
    else if(mouseY>400){
      a=b=0;c=d=1;}
      else{
        a=1;b=c=d=0;}
  colorrect();
  
}
void drawline(){
  stroke(0);
  line(0,0,1000,0);
  line(0,0,0,800);
  line(1000,0,1000,800);
  line(0,800,1000,800);
  line(0,y1,1000,y1);
  line(x1,0,x1,800);
  line(0,y2,x2,y2);
  //line(0,600,200,600);
  line(x5,y5,x5,800);
  line(x3,y3,1000,y3);
  line(0,y4,1000,y4);
  line(800,0,800,800);
  line(x9,y9,x9,800);
  line(x8,y8,x9,y3);
  
}
void colorrect(){
  fill(255*a,255*a,255*c);
  rect(x1,y1,x6-x1,y6-y1);
  rect(x6,y3,x10-x6,y10-y3);
  rect(x11,0,1000-x11,y11);
  fill(255,255*b,0);
  rect(0,y2,x3,y3-y2);
  rect(x4,y4,x7-x4,800-y4);
  rect(x8,y8,x12-x8,y12-y8);
  fill(255*c,255*d,255*a);
  rect(0,y1,x2,y2-y1);
  rect(0,y4,x4,800-y4);
  rect(x12,y12,1000-x12,y13-y12);
}
