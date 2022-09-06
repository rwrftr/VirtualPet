void setup()
{
  size(400,400);
}
/*void mouseClicked()
{
  if (mouseX>20) 
  
  System.out.print("woah");
  
  System.out.print(mouseX+ " ");
  System.out.print(mouseY);
}
*/

void draw()
{
//THING(x,y,l,w)



//lower legs
fill(217,165,102);

float x = -0.261799;

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
x = 0.261799;

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
fill(224,200,141);
ellipse(200,100,100,150);

//eyes
fill(255,255,255);
ellipse(180,80,15,15);
ellipse(220,80,15,15);

//shoes
fill(230,30,23);
ellipse(165,290,25,15);
ellipse(235,290,25,15);

//cracks
fill(0,0,0);
line(237,150,222,138); 
line(222,138,204,143);
line(204,143,194,134);
line(213,140,208,150);

line(170,40,184,46);
line(184,46,200,41);
line(188,45,193,48);
}
