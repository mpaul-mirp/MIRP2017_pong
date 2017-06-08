void updateBallVelocity() {
  ballVy+=gravity;
 // Detect Ball collisions with walls or paddles
  if(ballX>displayWidth-ballRadius)
  { ballX = displayWidth-ballRadius;
    ballVx*=(-1);}
  if(ballX<ballRadius)
  { ballX = ballRadius;
    ballVx*=(-1);}
  if(ballY>displayHeight-ballRadius)
  { ballY = displayHeight-ballRadius;
    ballVy*=(-1);}
  if(ballY<ballRadius)
  { ballY = ballRadius;
    ballVy*=(-1);}
 // If collide with paddle, or top/bottom wall, then bounce off
 // If collides with left wall, right player gains one point
 // If collides with right wall, left player gains one point
}

void updateBallPosition() {
  ballX += ballVx;
  ballY += ballVy;
}

void updatePaddlePositions() {
  if (left_up)
  {  leftPaddle = leftPaddle-PADDLE_VELOCITY-PADDLE_VELOCITY;}
  if (left_down)
  {  leftPaddle = leftPaddle+PADDLE_VELOCITY;}
  if (right_up)
  {  rightPaddle = rightPaddle-PADDLE_VELOCITY-PADDLE_VELOCITY;}
  if (right_down)
  {  rightPaddle = rightPaddle+PADDLE_VELOCITY;}
  // Based on the keys pressedd, move the paddles (update Y position)
  // Make sure the paddles don't leave the screen
  if (leftPaddle<paddleLength/2)
  {   leftPaddle = paddleLength/2;
      PADDLE_VELOCITY *= -1;}
  if (leftPaddle>displayHeight-paddleLength/2)
  {   leftPaddle = displayHeight-paddleLength/2;
      PADDLE_VELOCITY *= -1;}
  if (rightPaddle<paddleLength/2)
  {   rightPaddle = paddleLength/2;
      PADDLE_VELOCITY *= -1;} 
  if (rightPaddle>displayHeight-paddleLength/2)
  {   rightPaddle = displayHeight-paddleLength/2;
      PADDLE_VELOCITY *= -1;}
  if(ballX<paddleWidth+ballRadius)       ballXinsidel=true;
  if(ballY>=leftPaddle-paddleLength/2)   ballYgreaterl=true;
  if(ballY<=leftPaddle+paddleLength/2)   ballYlessl=true;
  if(ballX>paddleWidth+ballRadius)       ballXinsidel=false;
  if(ballY<leftPaddle-paddleLength/2)    ballYgreaterl=false;
  if(ballY>leftPaddle+paddleLength/2)    ballYlessl=false;
  if ((ballXinsidel)&&((ballYgreaterl)&&(ballYlessl)))
  { ballX=paddleWidth+ballRadius;
    buffer=paddleLength/2;
    BALL_VELOCITY=BALL_VELOCITY*(ballY-leftPaddle);
 //  ballVx*=(-1);
}
    
  if(ballX>displayWidth-(paddleWidth+ballRadius))       ballXinsider=true;
  if(ballY>=rightPaddle-paddleLength/2)                 ballYgreaterr=true;
  if(ballY<=rightPaddle+paddleLength/2)                 ballYlessr=true;
  if(ballX<displayWidth-(paddleWidth+ballRadius))       ballXinsider=false;
  if(ballY<rightPaddle-paddleLength/2)                  ballYgreaterr=false;
  if(ballY>rightPaddle+paddleLength/2)                  ballYlessr=false;
  if ((ballXinsider)&&((ballYgreaterr)&&(ballYlessr)))
  { ballX=displayWidth-(paddleWidth+ballRadius);
    buffer=paddleLength/2;
    BALL_VELOCITY=BALL_VELOCITY*(ballY-rightPaddle);
 // ballVx*=(-1); 
}
   
}