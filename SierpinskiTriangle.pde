int bee = 10;
public void setup(){
 size(1000,1000);
 frameRate(500);
 noLoop();
}
public void draw(){
  sierpinksi(50,900,900);
}
public void sierpinksi(int x, int y, int len){
  if(len <= bee){
    fill(0,0,0);
   triangle(x,y,x+len,y,x+len/2,y -len); 
  }
  else{
    sierpinksi(x,y,len/2);
    sierpinksi(x+(len/2),y,len/2);
    sierpinksi(x+(len/4),y-(len/2),len/2);    
  }
}
void mouseDragged(){
     bee += 5;
     redraw();
}
