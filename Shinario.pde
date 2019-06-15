PFont words;
PImage dialogWhite, dialogRed, openingBg;
PImage openHuman1, openHuman2, openHuman3;
PImage openDoll1, openDoll2, openDoll3, openDoll4;

final float dialogX = 50;
final float dialogY = 700;
final float dialogW = 900;
final float dialogH = 250;
final float wordsX = 180;
final float wordsY = 760;

float openHumanX = 60;
float openHumanY = 300;
float openDollX = 680;
float openDollY = 300;

String hiro = "主角：";
String doll = "人偶：";
boolean nextCheck = false;
int stringCheck = 0;

void setup(){
  size(1000,1000);
  background(0);
  words = createFont("PingFang Regular_0.ttf",12);
  openingBg = loadImage("img/opening.png");
  dialogWhite = loadImage("img/dialog.png");
  dialogRed = loadImage("img/dialogRed.png");
  openHuman1 = loadImage("img/openhuman1.png");
  openHuman2 = loadImage("img/openhuman2.png");
  openHuman3 = loadImage("img/openhuman3.png");
  openDoll1 = loadImage("img/opendoll1.png");
  openDoll2 = loadImage("img/opendoll2.png");
  openDoll3 = loadImage("img/opendoll3.png");
  openDoll4 = loadImage("img/opendoll4.png");
}

void draw(){
  background(openingBg);
  
  if(stringCheck == 1) image(openHuman1,openHumanX,openHumanY);
  if(stringCheck == 2) image(openHuman2,openHumanX,openHumanY);
  if(stringCheck == 3) image(openHuman2,openHumanX,openHumanY);
  if(stringCheck == 4) image(openHuman2,openHumanX,openHumanY);
  if(stringCheck == 5) image(openHuman2,openHumanX,openHumanY);
  if(stringCheck == 6) {image(openHuman2,openHumanX,openHumanY); image(openDoll1,openDollX,openDollY);}
  if(stringCheck == 7) {image(openHuman1,openHumanX,openHumanY); image(openDoll1,openDollX,openDollY);}
  if(stringCheck == 8) {image(openHuman1,openHumanX,openHumanY); image(openDoll2,openDollX,openDollY);}
  if(stringCheck == 9) {image(openHuman3,openHumanX,openHumanY); image(openDoll2,openDollX,openDollY);}
  if(stringCheck == 10) {image(openHuman3,openHumanX,openHumanY); image(openDoll2,openDollX,openDollY);}
  if(stringCheck == 11) {image(openHuman3,openHumanX,openHumanY); image(openDoll3,openDollX,openDollY);}
  if(stringCheck == 12) {image(openHuman3,openHumanX,openHumanY); image(openDoll3,openDollX,openDollY);}
  if(stringCheck == 13) {image(openHuman3,openHumanX,openHumanY); image(openDoll3,openDollX,openDollY);}
  if(stringCheck == 14) {image(openHuman3,openHumanX,openHumanY); image(openDoll3,openDollX,openDollY);}
  if(stringCheck == 15) {image(openHuman1,openHumanX,openHumanY); image(openDoll3,openDollX,openDollY);}
  if(stringCheck == 16) {image(openHuman2,openHumanX,openHumanY); image(openDoll3,openDollX,openDollY);}
  if(stringCheck == 17) {image(openHuman2,openHumanX,openHumanY); image(openDoll2,openDollX,openDollY);}
  if(stringCheck == 18) {image(openHuman2,openHumanX,openHumanY); image(openDoll2,openDollX,openDollY);}
  if(stringCheck == 19) {image(openHuman1,openHumanX,openHumanY); image(openDoll1,openDollX,openDollY);}
  if(stringCheck == 20) {image(openHuman2,openHumanX,openHumanY); image(openDoll2,openDollX,openDollY);}
  if(stringCheck == 21) {image(openHuman2,openHumanX,openHumanY); image(openDoll2,openDollX,openDollY);}
  if(stringCheck == 22) {image(openHuman2,openHumanX,openHumanY); image(openDoll4,openDollX,openDollY);}
  if(stringCheck == 23) {image(openHuman1,openHumanX,openHumanY); image(openDoll1,openDollX,openDollY);}
  if(stringCheck == 24) {image(openHuman3,openHumanX,openHumanY); image(openDoll1,openDollX,openDollY);}
  if(stringCheck == 25) {
    image(openHuman3,openHumanX,openHumanY);
    openHumanX -= 20;
    if(openHumanX <= -300){
      openHumanX = -300;
    }
    image(openDoll1,openDollX,openDollY);
  }
  if(stringCheck == 26) image(openDoll2,openDollX,openDollY);
  if(stringCheck == 27) image(openDoll2,openDollX,openDollY);
  if(stringCheck == 28) image(openDoll4,openDollX,openDollY);
  
  if(stringCheck >= 1 && stringCheck <= 28) image(dialogWhite,dialogX,dialogY,dialogW,dialogH);
  
  fill(255);
  textFont(words,24);
  if(stringCheck == 1) text(hiro + "\n果然…亂七八糟的。",wordsX,wordsY);
  if(stringCheck == 2) text(hiro + "\n……唉。",wordsX,wordsY);
  if(stringCheck == 3) text("(翻東西的聲音)",wordsX,wordsY);
  if(stringCheck == 4) text(hiro + "\n嗯？\t這個是？",wordsX,wordsY);
  if(stringCheck == 5) text(hiro + "\n嗯？\t這個是？\n……都破破爛爛的了，放很久了嗎？",wordsX,wordsY);
  if(stringCheck == 6) text(doll + "\n你好。",wordsX,wordsY);
  if(stringCheck == 7) text(hiro + "\n… …蛤？",wordsX,wordsY);
  if(stringCheck == 8) text(doll + "\n好久沒見到人類了，感覺真懷念呀─",wordsX,wordsY);
  if(stringCheck == 9) text(hiro + "\n噫…！",wordsX,wordsY);
  if(stringCheck == 10) text(hiro + "\n噫…！\n娃、娃娃說話了！",wordsX,wordsY);
  if(stringCheck == 11) text(doll + "\n痛！\t你小心一點、身體都要散了！",wordsX,wordsY);
  if(stringCheck == 12) text(hiro + "\n哇啊…",wordsX,wordsY);
  if(stringCheck == 13) text(hiro + "\n哇啊… 好噁。",wordsX,wordsY);
  if(stringCheck == 14) text(doll + "\n噁心？\t你這沒禮貌的傢伙，這是和好久不見的朋友說的話嗎！",wordsX,wordsY);
  if(stringCheck == 15) text(hiro + "\n誰和你是朋友啊！",wordsX,wordsY);
  if(stringCheck == 16) text(doll + "\n你…！",wordsX,wordsY);
  if(stringCheck == 17) text(doll + "\n你…！\t很好，沒關係，",wordsX,wordsY);
  if(stringCheck == 18) text(doll + "\n你…！\t很好，沒關係，\n反正你很快就不能再說出這種話了。",wordsX,wordsY);
  if(stringCheck == 19) text(hiro + "\n… …蛤？\t又在說什麼鬼話。",wordsX,wordsY);
  if(stringCheck == 20) text(doll + "\n你看我的身體，看起來就快要壞光了對吧？",wordsX,wordsY);
  if(stringCheck == 21) text(doll + "\n你看我的身體，看起來就快要壞光了對吧？\n這樣的話，不就應該找找另外一副身體吧？",wordsX,wordsY);
  if(stringCheck == 22) text(doll + "\n你看我的身體，看起來就快要壞光了對吧？\n這樣的話，不就應該找找另外一副身體吧？\n現在眼前不就有一個嗎。",wordsX,wordsY);
  if(stringCheck == 23) text(hiro + "\n…",wordsX,wordsY);
  if(stringCheck == 24) text(hiro + "\n… …唔…！",wordsX,wordsY);
  if(stringCheck == 25) text("(關門聲)",wordsX,wordsY);
  if(stringCheck == 26) text(doll + "\n呵...啊哈哈哈哈哈哈哈哈哈哈哈哈哈哈！！",wordsX,wordsY);
  if(stringCheck == 27) text(doll + "\n呵...啊哈哈哈哈哈哈哈哈哈哈哈哈哈哈！！\n以為這樣就能逃掉嗎？",wordsX,wordsY);
  if(stringCheck == 28) text(" ",wordsX,wordsY);
  if(stringCheck == 29) {
    background(0);
    image(dialogRed,dialogX,dialogY,dialogW,dialogH);
    fill(255,0,0);
    text(doll + "\n別開玩笑了。",wordsX,wordsY);
  }
}

void keyPressed(){
  if(key == ' '){
    nextCheck = true;
    stringCheck += 1;
  }
}

void keyReleased(){
  if(key == ' '){
    nextCheck = false;
  }
}
