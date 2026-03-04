setup = function() {
    size(400, 400);
};

var answer = 1;
var y = 150;
var speed = .5;
var pinkieStill = loadImage("https://www.clipartmax.com/png/full/87-871831_pink-eyes-clipart-pinky-my-little-pony-pinkie-pie.png");
var pinkieTalk = loadImage("https://static.wikia.nocookie.net/ponymondawndusk/images/4/42/PinkiePie.png/revision/latest?cb=20120507160059");

draw = function(){
  background(255,255,255,0);
  noStroke();
  fill(200,230,255);
  ellipse(150, y, 200, 200);
  fill(255, 255, 255);
  
  
  //pinkie pie the fortune teller
  if(mousePressed){
    image(pinkieTalk, 200, 200, 200, 280);
  }
  else{
    image(pinkieStill, 200, 200, 280, 280);
  };


  y = y + speed;

  //ball levetation
  if(y>170){
    speed = -.5;
  }
  if(y<130){
    speed = .5;
  }

  textSize(30);
  textFont (createFont("Comic Sans MS"));

  //crystal ball answers
  if (answer == 1) {
    fill(4, 61, 222);
    text("you betcha!", 76, y); 
  }
  if (answer == 2) {
    fill(4, 61, 222);
    text("my sources", 76, y);
    text("say 'yay!'", 85, y + 30); 
  }
  if (answer == 3) {
    fill(4, 61, 222);
    text("ask", 126, y);
    text("again later!", 75, y + 30); 
  }
  if (answer == 4) {
    fill(4, 61, 222);
    text("don't", 116, y);
    text("count on it!", 85, y + 30); 
  }
  if (answer == 5) {
    fill(4, 61, 222);
    text("nope!", 116, y);
  }
  if (answer == 6) {
    fill(4, 61, 222);
    text("eyup!", 115, y);
  }
  if (answer == 7) {
    fill(4, 61, 222);
    text("concentrate", 76, y);
    text("and ask again!", 60, y + 30); 
  }
  if (answer == 8) {
    fill(4, 61, 222);
    text("without", 106, y);
    text("a doubt!", 95, y + 30); 
  }
  if (answer == 9) {
    fill(4, 61, 222);
    text("my sources", 76, y);
    text("say 'no'!", 105, y + 30); 
  }
  if (answer == 10) {
    fill(4, 61, 222);
    text("better not", 86, y);
    text("tell you now!", 70, y + 30); 
  }
  
};

mouseClicked = function(){
  answer = round(random(1, 10));
};




