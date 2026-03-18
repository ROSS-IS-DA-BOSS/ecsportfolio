//ROSS POHLSANDER | BANK|
int money;
int score;
int db;
int da;
int r;
int k;



void setup() {
  size(400, 400);
  money = 0;
  
}
void draw(){
  background(0);
  textAlign(CENTER);
  textSize(32);
  text(money,width/2,height*0.3);
  rectMode(CENTER);
  fill(#ff0000);
  rect((width/2)-75,height/2,50,50);
  rect((width/2)+75,height/2,50,50);
  fill(#000000);
  text(da,(width/2)+75,height/2+10);
  text(db,(width/2)-75,height/2+10);
  fill(#ffffff);
  textAlign(LEFT);
  textSize(16);
  text("score: " + score, 20, height*0.8);
  textSize(24);
  textAlign(CENTER);
  text(da+db, width/2, height/2+10);
  rect(200, 300, 100, 50);
  fill(#000000);
  text("Bank",200,300);
  fill(#ffffff);
  text("Rolls " + r, width/2, 30);
  text("Rounds " + k, width/2, 60);
  if(k>19){
    background(0);
    fill(#ff0000);
    text("GAME FINISHED", width/2, height/2-30);
    fill(#ff0000);
    text("score: " + score, width/2, height/2);
    noLoop();
    
  }
}
void mousePressed() {
  da = (int) random(1, 7);
  db = (int) random(1, 7);
  
  if (mouseX > 150 && mouseX < 250 && mouseY > 275 && mouseY < 325) {
    score = score + money;
    money = 0;
    k= k+1;
  }else{
  r= r+1;
  
  
  if (da+db ==7){
    money = 0;
  }
  if (da == db) { 
    money = money * 2;
  } else {
    money = money + (da + db);
  }
  if (da+db ==7){
    money = 0;
  }
  }
}
