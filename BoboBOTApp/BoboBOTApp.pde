/* Shows the manufacturing and operation via bluetooth of a 
 * mini caterpillar dozer 3D-printed based in the 
 * Prof. Brian Evans‘ previous work in Thingiverse.
 * BoboBOT can be controlled via Bluettoth for telecontrol 
 * or running autonomous  way.
 *
 * Code,parts, video, and diagrams available in: http://wp.me/p22sj0-ex
 *
 * ControllP5 library needed       
 * Made(by)Frutos http://madebyfrutos.wordpress.com/
 * Ocero El Bierzo, Spain Dec'12
 */
import processing.serial.*; 
import controlP5.*;

ControlP5 controlP5;
DropdownList p1, p2;

Serial myPort;

PImage a;  // Declare variable "a" of type PImage
PFont fontA;

boolean pvez=true;
String portName2;

int j;
int cnt = 0;


void setup() {
  size(400,300);
  frameRate(30);
  controlP5 = new ControlP5(this);
  p1 = controlP5.addDropdownList("myList-p1",10,20,150,120);
  customize(p1);
  
  fontA = loadFont("AgentRed-10.vlw");
  textAlign(CENTER);
  a = loadImage("arrow2.png");
  
  textFont(fontA); 
}

void draw() {
  background(100);
  image(a, 0, 0); 
  fill(255);
   text("Press 'R' to reset", 210,290);
  // text("Use Arrow Keys", 190,266);
}

void zerial(){
 
// List all the available serial ports:
  println(Serial.list());
  // I know that the port 7 in the serial list on my pc
  // is always my  Arduino or Wiring module, so I open Serial.list()[7].
  // Open whatever port is the one you're using.
  println(j);
  portName2 = Serial.list()[j];
  myPort = new Serial(this, portName2, 9600);
  myPort.clear();
  // don't generate a serialEvent() until you get a newline (\\n) byte:

}

