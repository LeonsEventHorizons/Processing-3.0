Drop[] drop = new Drop[2]; //<>// //<>// //<>//
Catcher catcher;
Timer time;
int totalDrops;
PFont font;
int lives;
int score;
float s1, s2;
int levelCounter;
boolean started = false;
int reduceTimer;

void setup() {
  size(800, 800);
  smooth(4);
  background(0); 

  font = createFont("CooperBlackStd-Italic", 42, true);
  noCursor();

  lives = 10;   
  levelCounter = 1;
  score = 0;

  fill(255, 0, 0);
  textAlign(CENTER);

  reduceTimer = 100;
  time = new Timer(2500);  
  time.start();  

  catcher = new Catcher();

  totalDrops = 0;

  s1 = 1;
  s2 = 5;

  //need a seperate variable insude loop for score and levels
  String startText = "Welcome to RainFall!";
  textFont(font, 52);
  text(startText, width/2, 150);

  textAlign(CENTER);
  String drawInstructions = "500 drops will fall per level.\n\n Drops will move faster and appear more frequent with each level.\n\n You will get 10 lives per level\n\n Press any key to begin...\n\n\n\n\n\n\n\n\n\n\n\n\nCreated by Leon Mercanti";
  fill(255);
  textFont(font, 20);
  text(drawInstructions, width/2, 300);
}

void draw() {

  if (started) {
    background(0);
    float randomSpeeds = random(s1, s2);

    fill(255);
    textAlign(LEFT);
    String printLives = "Lives: " +lives;
    textFont(font, 20);
    text(printLives, 10, 30); 

    textAlign(CENTER);
    String printLevel = "Level: " + levelCounter;
    textFont(font, 20);
    text(printLevel, width/2, 30);

    textAlign(RIGHT);
    String printScore = "Score: " + score;
    textFont(font, 20);
    text(printScore, width - 40, 30);

    catcher.drawCatcher();

    if (time.isTimerFinished()) {    

      drop[totalDrops] = new Drop(randomSpeeds);
      totalDrops++; 

      if (totalDrops >= drop.length) {
        totalDrops = 0;
        lives = 10;
        s1 += 1;
        s2 += 1;
        levelCounter = levelCounter + 1;
        time.reduceTotalTime(reduceTimer);
        if (levelCounter > 10) {
          fill(255, 0, 0);
          textAlign(CENTER);
          String finishGame = "CONGRATULATIONS YOUR AWESOME!!!\n You have finished the game.";
          textFont(font, 34);
          text(finishGame, width/3, height/2);
          noLoop();
        }
      }        
      time.start();
    }


    //Now instead of displaying ALL drops in one go, only single drops
    //will be displayed one at a time.
    for (int i = 0; i < totalDrops; i++) {
      drop[i].display();
      drop[i].moveRainDrops();    

      if (drop[i].dropReachedBottom()) {
        lives -= 1;
      }

      if (drop[i].checkCollide()) {
        drop[i].caught();
        score = score + 5;
      }
    }

    if (lives <= 0) {
      fill(255);
      textAlign(CENTER);
      String endGame = "Sorry you have lost all 10 lives.\n\n GAME OVER!";
      textFont(font, 38);
      text(endGame, width/2, 300);   
      noLoop();
    }
  }
}

void keyPressed() { 
  started = true;
}