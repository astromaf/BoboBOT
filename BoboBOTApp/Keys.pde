

void keyPressed() {
 
  if (key == CODED) {
    
    if (keyCode == RIGHT) {
      
    if(pvez== true)  {
       myPort.write(1);
   println("Right"); 
   pvez=false;
   }  
   
    } 
    else if (keyCode == LEFT) {
      
      if(pvez== true)  {
        myPort.write(2);
   println("Leftt"); 
   pvez=false;
   }  
    }
    else if (keyCode == UP) {
      
      if(pvez== true)  {
        myPort.write(3);
   println("UP"); 
   pvez=false;
   }  
    } 
    else if (keyCode == DOWN) {
     
      if(pvez== true)  {
         myPort.write(4);
   println("Down"); 
   pvez=false;
   }  
    } 
  }
  else if( key == 'q' || key == 'Q'){
    myPort.write(5);
  
  }
  else if( key == 'w' || key == 'W'){
    myPort.write(6);
  
  }
  else if( key == 'R' || key == 'r'){
    
   setup();
  
  }
  
}


void keyReleased() {
  println("Libre"); 
  myPort.write(7); 
 pvez=true; 
}

