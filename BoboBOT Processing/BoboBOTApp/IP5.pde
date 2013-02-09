void customize(DropdownList ddl) {
  ddl.setBackgroundColor(color(190));
  ddl.setItemHeight(20);
  ddl.setBarHeight(15);
  ddl.captionLabel().set("Select Serial Ports");
  ddl.captionLabel().style().marginTop = 3;
  ddl.captionLabel().style().marginLeft = 3;
  ddl.valueLabel().style().marginTop = 3;
  
  for(int i=0;i<Serial.list().length;i++) {
    String portName = Serial.list()[i];
    ddl.addItem("["+i+"] "+portName,i);
  }
 
  ddl.setColorBackground(color(60));
  ddl.setColorActive(color(255,128));
}

void controlEvent(ControlEvent theEvent) {
 
  if (theEvent.isGroup()) {
    j=int(theEvent.group().value());
    zerial();
   
  } 
}
