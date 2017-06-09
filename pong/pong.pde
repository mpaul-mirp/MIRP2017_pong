void setup() {
  size(displayWidth, displayHeight);
  resetGame();
  textFont(createFont("Arial Bold", 50));
}

void draw() {
  drawGameScreen();
}

void drawGameScreen() {
  // Draw background
     background(bgColor);
  // Update Ball Velocity and Resolve Collisions
     updateBallVelocity();
  // Update Ball and Paddle Positions
     updateBallPosition();
     updatePaddlePositions();
  // Draw Ball and Paddles
     drawBall();
     drawPaddles();
  // Display Scores
     displayScores();
}

void drawBall() {
  // Display Ball in correct position
  fill(ballColor);

  ellipse(ballX,ballY,2*ballRadius,2*ballRadius);
}

void drawPaddles() {
  // Display Left and Right paddles in correct position
  fill(paddleColor);
  rectMode(CENTER);
  rect(paddleWidth/2,leftPaddle,paddleWidth,paddleLength);
  fill(paddleColor);
  rectMode(CENTER);
  rect(displayWidth-paddleWidth/2,rightPaddle,paddleWidth,paddleLength);
}

void resetGame(){
  // Reset Ball and Paddle Positions
  // Reset Ball Velocity
}

void displayScores() {
  // Display Left and Right player Scores
 text("leftScore",displayWidth/2-400,40);
 rightLose();
 text(leftScore,displayWidth/2-400,100);
 text("rightScore",displayWidth/2+200,40);
 leftLose();
 text(rightScore,displayWidth/2+200,100);
}