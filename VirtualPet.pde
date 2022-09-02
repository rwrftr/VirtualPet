import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

public void setup() {
  size(500, 500);
  arduino = new Arduino(this, Arduino.list()[0], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work
}

//1.0 - 0.5

public void draw() {
  stroke(0);
  background(164, 223, 235);
  int y = arduino.analogRead(5);
  float z = (float(y)/350);
  float z2 = z+0.4;
  float z3 = y*2;
  if (z3 < 176 ){
  z3 = 176;
  }
  
  
  if (z3 > 500 ){
  z3 = 500;
  }
  
  
  if (y < 30 ){
  y = 30;
  }
  if  (y > 470){
  y = 470;
  }
  if  (z > 0.8){
  z = 0.8;
  }
  if (z2 > 1){
  z2=1;
  }
  if (z2 < 0.5){
  z2 = 0.5;
}
 
  
  System.out.println(z2);
  //ellipse(250, 2*y, 50, 50);
  
  //THING(x,y,l,w)

// the first two parameters set the location of the upper-left corner, the third sets the width, and the fourth sets the height. 
///*
pushMatrix();
translate(0,z3);
  fill(166, 36, 31);
  rect(0, 174-500, 500, 500);
  fill(6, 128, 31);
  rect(0, 500-500, 500, 500);
popMatrix();


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

//cracks
fill(0,0,0);
line(237,150,222,138); 
line(222,138,204,143);
line(204,143,194,134);
line(213,140,208,150);

line(170,40,184,46);
line(184,46,200,41);
line(188,45,193,48);

//circle cover

pushMatrix(); 
 fill(224,200,141);
  noStroke();
  translate(200,100);
  scale(z2);
  ellipse(0,0,100,150); 
  translate(-200,-100);
  stroke(0);
popMatrix();
  
//eyes
fill(255,255,255);
circle(180,80,15);
circle(220,80,15);

//shoes
fill(230,30,23);
ellipse(165,290,25,15);
ellipse(235,290,25,15);

//egg body
noFill();
ellipse(200,100,100,150);
fill(224,200,141);


}

void mouseClicked()
{ 
  System.out.print("woah");
  
  System.out.print(mouseX+ " ");
  System.out.println(mouseY);
}
