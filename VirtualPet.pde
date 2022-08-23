void setup()
{
  size(400,400);
}
void draw()
{
//THING(x,y,l,w)

//lower legs
fill(224,200,141);
int x = 9;

translate(250,245);
rotate(-x);
ellipse(0,0,30,100);
rotate(x);
translate(-250,-245);

translate(150,245);
rotate(x);
ellipse(0,0,30,100);
rotate(-x);
translate(-150,-245);

//upper legs
x = 10;

translate(150,180);
rotate(x);
ellipse(0,0,40,110);
rotate(-x);
translate(-150,-180);

translate(250,180);
rotate(-x);
ellipse(0,0,40,110);
rotate(x);
translate(-250,-180);

//egg body
ellipse(200,100,100,150);

//eyes
fill(255,255,255);
ellipse(180,80,15,15);
ellipse(220,80,15,15);
}
