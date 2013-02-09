/* Shows the manufacturing and operation via bluetooth of a 
 * mini caterpillar dozer 3D-printed based in the 
 * Prof. Brian Evans‘ previous work in Thingiverse.
 * BoboBOT can be controlled via Bluettoth for telecontrol 
 * or running autonomous  way.
 *
 *Code,parts, video, and diagrams available in: http://wp.me/p22sj0-ex
 * Required connections between Arduino and qik 2s9v1:
           5V - VCC
           GND - GND
           Digital Pin 2 - TX
           Digital Pin 3 - RX
           Digital Pin 4 - RESET           
* Based Pololu qik2s9v1 library example           
* Made(by)Frutos http://madebyfrutos.wordpress.com/
* Ocero El Bierzo, Spain Dec'12
*/


#include <SoftwareSerial.h>
#include <PololuQik.h>

PololuQik2s9v1 qik(2, 3, 4);

void setup()
{
  Serial.begin(9600);  
  qik.init();
  delay(1000);
   
}

void loop(){
 while ( Serial.available() >= 1)
  {   
       int tag = Serial.read();
       
       switch (tag){
         case 1:
         derecha();
           break;
         case 2:
         izquierda();
           break;
         case 3:
         adelante();
           break;
         case 4:
         atras();
           break;
           case 7:
         parada();
           break;
            case 49:
         derecha();
           break;
         case 50:
         izquierda();
           break;
         case 51:
         adelante();
           break;
         case 52:
         atras();
           break;
            case 55:
         parada();
           break;
   
          
       }      
          
  }
      
}//loop

void izquierda(){
  qik.setM0Speed(-70);
  qik.setM1Speed(-60);
 //delay(40);
  //parada();

}
void derecha(){
 qik.setM0Speed(70);
 qik.setM1Speed(60);
 //delay(40);
 // parada();    
}
void adelante(){  
    qik.setM0Speed(90);
    qik.setM1Speed(-85);
    //delay(90);
    //parada();
  }
void atras(){  
    qik.setM0Speed(-90);
    qik.setM1Speed(85);
    //delay(90);
    //parada();
  }
void parada(){
    qik.setM0Speed(0);
    qik.setM1Speed(0);
  }  
void diagonalDER(){
    qik.setM0Speed(90);
    qik.setM1Speed(-80/2);
    delay(90);
    parada();
  }
void diagonalIZQ(){
    qik.setM0Speed(90/2);
    qik.setM1Speed(-80);
    delay(90);
    parada();
  }
