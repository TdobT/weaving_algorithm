String[] steps;


PFont f;
int pos = 0;
int size = 0;

void setup(){
  size(400, 200);
  f = createFont("Arial",16,true);
  steps = loadStrings("steps.txt");
  size = steps.length;
  
}

void draw() {
  
  background(255);
  textFont(f);
  fill(0);
  stroke(175);
  
  textAlign(CENTER);
  String[] sps = steps[pos].split("\t");
  text(sps[0] + sps[1] + " " + sps[2] + " " + sps[3], width/2, 60);
  //println(steps[pos]);
}


void keyPressed() {
  
  println(keyCode);
  if (keyCode == 37 || keyCode == 38) {
    pos = pos > 0 ? --pos : 0;
  }
  else if (keyCode == 39 || keyCode == 40) {
    pos = pos < size ? ++pos : pos;
  }
  
}
