// Display Size
int displayWidth=1000, displayHeight=1000;

// Velocity Cnstants
float BALL_VELOCITY = 5;
float BALL_VELOCITYbefore=5;                        //This is the MAX speed of the ball.
float PADDLE_VELOCITY = 2;
float gravity = 0.0;

// Background Color
int bgColor = 0;

// Ball parameters
float ballX, ballY;
float ballVx = BALL_VELOCITY;
float ballVy = BALL_VELOCITY; // ballVx is always BALL_VELOCTY or -BALL_VELOCITY; ballVy varies.
float ballRadius = 10;
int ballColor = 105;

// Y - position of Left and Right paddles
float leftPaddle=displayHeight/2, rightPaddle=displayHeight/2;
float buffer;
// Paddle Dimensions
float paddleLength = 180, paddleWidth = 20;
int paddleColor = 255;

// Score Variables
int leftScore = 0, rightScore = -1;

// Controls for the Left Paddle
char LEFT_UP = 'q', LEFT_DOWN = 'a';
boolean ballXinsidel,ballYgreaterl,ballYlessl;
boolean ballXinsider,ballYgreaterr,ballYlessr;
// Controls for the Right Paddle
char RIGHT_UP = 'o', RIGHT_DOWN = 'l';

// Game Controls
char RESET = 'r', PAUSE = 'p', START = 's';

// Keyoard Handling Booleans
boolean left_up, right_up, left_down, right_down;
boolean reset, pause, start;