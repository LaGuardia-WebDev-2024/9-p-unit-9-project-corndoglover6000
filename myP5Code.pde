setup = function() {
    size(400, 400);
};

var answer = 1;
var y = 200;
var speed = .5;

draw = function(){
  background(255,255,255);
  noStroke();
  fill(200,230,255);
  ellipse(200, y, 200, 200);
  fill(255, 255, 255);
  
  y = y + speed;

  if(y>220){
    speed = -.5;
  }
  if(y<180){
    speed = .5;
  }

  if (answer == 1) {
    fill(4, 61, 222);
    text("you betcha!", 176, y); 
  }
  if (answer == 2) {
    fill(4, 61, 222);
    text("my sources", 176, y);
    text("say 'yay!'", 165, y + 20); 
  }
  if (answer == 3) {
    fill(4, 61, 222);
    text("ask", 176, y);
    text("again later", 165, y + 20); 
  }
  if (answer == 4) {
    fill(4, 61, 222);
    text("don't", 176, y);
    text("count on it", 165, y + 20); 
  }
  if (answer == 5) {
    fill(4, 61, 222);
    text("nope", 176, y);
  }
  if (answer == 6) {
    fill(4, 61, 222);
    text("eyup", 176, y);
  }
  if (answer == 7) {
    fill(4, 61, 222);
    text("concentrate", 176, y);
    text("and ask again", 165, y + 20); 
  }
  if (answer == 8) {
    fill(4, 61, 222);
    text("without", 176, y);
    text("a doubt", 165, y + 20); 
  }
  if (answer == 9) {
    fill(4, 61, 222);
    text("my sources", 176, y);
    text("say no", 165, y + 20); 
  }
  if (answer == 10) {
    fill(4, 61, 222);
    text("better not", 176, y);
    text("tell you now", 165, y + 20); 
  }
  
};

mouseClicked = function(){
  answer = round(random(1, 10));
};




