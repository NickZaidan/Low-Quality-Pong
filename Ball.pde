class Ball{
  //Measurements of the ball, and its location
  float x;
  float y;
  float w;
  //How fast it moves
  float xSpeed;
  float ySpeed;
  
  Ball(){
    reset(); //Puts the ball in the middle
  }
  void show(){
    stroke(255);
    ellipse(x, y, 15, 15); //Drawing the object
  }
  
  void move(){
    //Move it based off the x and y speed.
    x = x + xSpeed; 
    y = y + ySpeed;
    
       
    if(x < 0 || x > width){
      reset(); //If it goes out of bounds (someone scores), reset
    }
    
    if(y < 0 || y > height){
      ySpeed *= -1; //If it bounces off the top and bottom wall, reverse direction
    }
  }
  
  void reverseDirection(){
     xSpeed *= -1; //Reversing x axis speed, so left or right movement
  }
  
  void reset(){
    //Random start location
    this.x = random(width/2 - 40,width/2 + 40);
    this.y = random(height / 2 - 40, height /2 + 40);
    this.xSpeed = 7;
    this.ySpeed = 3;
  
  }
  
}
