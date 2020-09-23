// fork by Rupert Russell of https://turtletoy.net/turtle/2f124ae363 by https://turtletoy.net/user/reinder
// September 24 2020 - I am hoping to work for Parks Victoria as a Ranger Team Leader Fire and Emergency. I hope to get an interview. 

int points = 1000;
int radius = 420;
double norm = Math.PI * 2 / points;

float x1, y1, x2, y2;
float sp;
float ep;

void setup() {
  size (1000, 1000);
  noLoop();
  strokeWeight(0.1);
  background(255);
}


void draw() {
  for (int x = 0; x < points; x++) {
    sp = x;
    ep = (x * 2) % points;

    x1 = radius*(float)Math.cos(sp * norm);   // Converts from a double to a float
    y1 = radius*(float)Math.sin(sp * norm);
    x2 = radius*(float)Math.cos(ep * norm);
    y2 = radius*(float)Math.sin(ep * norm);

    x1 = x1 + width/2;
    y1 = y1 + height/2;

    x2 = x2 + width/2;
    y2 = y2 + height/2;

    line(x1, y1, x2, y2);
  }

 // save("cardiod-1000.png");
 // exit();
}
