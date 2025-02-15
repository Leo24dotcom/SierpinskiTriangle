int bee = 100;
public void setup(){
 size(1000,2000); 
 noLoop();
}
public void draw(){
 circle(500,500,1000); 
}
public void circle(int x, int y, int len){
  noFill();
  if(len <= bee){
    ellipse(x,y,len,len);
}
  else{
   ellipse(x,y,len,len);
   circle(x + len/4,y,len/2);
   circle(x - len/4,y,len/2);
   circle(x, y + len/4,len/2);
   circle(x, y - len/4,len/2);
  }
}

