float width = 1000;
float height = 700;;

//Ball object
Ball ball;

//Each paddle
Paddle leftPaddle;
Paddle rightPaddle;

void setup(){
  size(1000,700);
  //Initialising the objects
  ball = new Ball();
  leftPaddle = new Paddle(true);
  rightPaddle = new Paddle(false);
 
}
 


void draw(){
 background(0);
 
 //Constantly updating the ball object
 ball.show();
 ball.move();
 
 //Constantly updating the paddle object
 leftPaddle.show();
 rightPaddle.show();
 
 
 //Reverse direction of the ball when it hits the left paddle
 if(ball.x - ball.w < leftPaddle.x + leftPaddle.w &&
    ball.y - ball.w >leftPaddle.y && ball.y < leftPaddle.y + leftPaddle.h){
   ball.reverseDirection();
 } 
 
 //Reverse direction of the ball when it hits the right paddle
 else if(ball.x + ball.w > rightPaddle.x &&
   ball.y >rightPaddle.y && ball.y < rightPaddle.y + rightPaddle.h){
   ball.reverseDirection();
  } 
  
  
}

//When w or s is pressed, move the left paddle.
//When i or k is pressed, move the right paddle.
//Not completely functional, needs some minor tweaks
void keyPressed(){
  println(key);
  if(key == 'w'){
    leftPaddle.move(true); 
  }
  
  else if(key == 's'){
    leftPaddle.move(false);
  }
  
  if(key == 'i'){
   rightPaddle.move(true); 
  }
  
  else if(key == 'k'){
   rightPaddle.move(false); 
  }
}

void keyReleased(){
 
}
