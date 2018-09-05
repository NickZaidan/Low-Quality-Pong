class Paddle{
 //Dimensions and placement of paddles
 float x;
 float y;
 float w;
 float h;
 
 //How fast it moves
 float ySpeed;
 
 Paddle(boolean left){
  //boolean left is to determine if its a left or right paddle
  this.w = 10;
  this.h = 150;
  this.ySpeed = 10;
  
  //If its left paddle
  if(left){
   x = 15;
   y = 100;
  }
  
  //If its right paddle
  if(!left){
    x = width - 15 - w;
    y = 100;
  }
 }
 
 //Drawing the paddle
 void show(){
   rect(x, y, w, h);
 }
 
 //The movement function which minus's the y axis by its speed if it goes up
 //or moves y down if down is pressed
 //The logic works the other way where up minuses, and down pluses
 void move(boolean up){
   if(up){
     if(y > 0 && y + h < height){ //As long as the paddle is in pounds
       y = y - ySpeed;
     }
   }
   if(!up){
    if(y > 0 && y + h < height){
       y = y + ySpeed;
     }
   }
 }
}
  
