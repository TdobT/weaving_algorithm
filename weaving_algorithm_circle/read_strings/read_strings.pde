String[] steps;


PFont f;
int pos = 2;
int size = 0;

int[] find_fill(String col) {
  
  if (col.equals("arancione"))
    return new int[] { 232, 97, 0};
  
  if (col.equals("nero"))
    return new int[] { 0, 0, 0};

  if (col.equals("rosa"))
    return new int[] { 194, 30, 86};
  
  if (col.equals("giallo"))
    return new int[] { 200, 180, 28};
  
  
  return new int[] { 0, 0, 0};
  
}

void draw_str(String[] sp, int position, int heig, int size) {
  
  String[] sps = steps[position].split("\t");
  int[] cs;
  
  cs = find_fill(sps[1]);
  fill(cs[0], cs[1], cs[2]);
  textSize(size);
  text(sps[0] + sps[1] + " " + sps[2] + " " + sps[3], width/2, heig);
  
}

void setup(){
  size(1000, 2000);
  f = createFont("Arial",16,true);
  steps = loadStrings("steps.txt");
  size = steps.length;
  println(size);
  
}

void draw() {
  
  background(255);
  textFont(f);
  fill(0);
  stroke(175);
  textSize(15);
  
  textAlign(CENTER);
  
  int h = height / 5;
  draw_str(steps, pos-2, h, 30);
  draw_str(steps, pos-1, 2*h, 40);
  draw_str(steps, pos, 3*h, 55);
  draw_str(steps, pos+1, 4*h, 40);
  draw_str(steps, pos+2, 5*h, 30);
  
}


void keyPressed() {
  
  println(keyCode);
  if (keyCode == 37 || keyCode == 38) {
    pos = pos > 2 ? --pos : 2;
  }
  else if (keyCode == 39 || keyCode == 40) {
    pos = pos < size-3 ? ++pos : pos;
  }
  
}

void mousePressed() {
  if (mouseX > width / 2) 
    pos = pos < size-3 ? ++pos : pos;
  else
    pos = pos > 2 ? --pos : 2;
}
