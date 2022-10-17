class Agent {

  //Local Variables
  PVector pos;
  PVector speed;
  float rad;
  int pixID;
  float bright;
  boolean alive;
  float agentDist;
  float offset;
  PVector diff;
  PVector center;
  color col;

  //Constructor
  Agent(PVector _pos, float _rad) {
    rad = _rad;
    pos = _pos; //new PVector(random(0+rad, width-rad), random(0+rad, height-rad));
    speed = new PVector(random(-10, 10), random(-10, 10));
    alive = true;
    col = color(255,255,255,200);
  }

  //Subfunctions
  void run() {
    if (alive) {
      move();
      bounce();
      asBrightasBig();
      checkOther();
      asBrightasBig();
    }
    //asBrightasBig();
    display();
  }

  void move() {
    pos.add(speed);
  }

  void bounce() {
    if (pos.x < rad || pos.x > width-rad) {
      speed.x =0;speed.y = 0;
    }
    if (pos.y < rad || pos.y > height-rad) {
      speed.x =0;speed.y = 0;
    }
  }

  void asBrightasBig() {
    pixID = floor(pos.x) + floor(pos.y) * width;
    if (pixID >= 0 && pixID < width * height) {
      bright = brightness(color(img1.pixels[pixID]));
      rad =  2* (9 * bright /255);
      col=img1.get(floor(pos.x),floor(pos.y));
      //col = color(255);
    }
  }

  void checkOther() {
    for (int i = 0; i < agentList.size(); i ++) {
      Agent other = (Agent)agentList.get(i);
      agentDist = dist(pos.x, pos.y, other.pos.x, other.pos.y);
      offset = 2+(rad + other.rad)/2;
      if (agentDist != 0) {
        if (agentDist == offset) {
          speed.set(2000, 1000);
          other.speed.set(0, 0);
          alive = false;
        }
        else if(agentDist < offset){
          diff = PVector.sub(pos, other.pos);
          center = PVector.add(pos, other.pos);//center
          center.div(2);
          diff.normalize();
          pos = PVector.add(center, PVector.mult(diff, offset/2));
          speed.set(0, 0);
          other.speed.set(0, 0);
          if(agentDist < offset - 1 ){
          //col = color(230);
          col=img1.get(floor(pos.x),floor(pos.y));
          }
        }
        else{
          //col = color(255);
          col=img1.get(floor(pos.x),floor(pos.y));
        }
      }
    }
    //  else {
    //  speed.x *= -1;
    //  speed.y *= -1;
    //}
  }


  void display() {
    noStroke();
    if (rad > 1) {
      fill(0, 20);
      ellipse(pos.x, pos.y, rad+4, rad+4);
      fill(0, 50);
      ellipse(pos.x, pos.y, rad+3, rad+3);
      fill(col);
      ellipse(pos.x, pos.y, 20,20);
    }
  }
}
