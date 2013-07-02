//===初期化処理===
void setup(){
  size(380,200);      //画面サイズ
  background(0);      //背景色
  textAlign(CENTER);  //テキストを揃える位置
  strokeCap(SQUARE);  //線の終端の形状を四角形に設定
  strokeWeight(10);   //線の太さ
  textSize(25);       //文字サイズ
}

//===繰り返し処理===
void draw(){
  background(0);                    //背景色(画面のクリア)
  
  //===後ろの四角形===
  fill(34, 34, 34);                 //塗りつぶす色
  stroke(34, 34, 34);               //線の色
  rect(0,30,width,height-60);       //四角形の描画
  
  //===時計の設定(全体)===
  fill(255, 255, 255);              //文字色
  noFill();                         //塗りつぶしを行わない
  
  //===時===
  stroke(255, 69, 0);               //線の色
  arc(70,100,100,100,radians(270),radians(270)+radians(map(hour() + (minute()/60.0), 0, 24, 0, 360)));       //弧の表示
  text(hour() + "h", 70, 110);      //文字表示
  
  //===分===
  stroke(30, 144, 255);             //線の色
  arc(190,100,100,100,radians(270),radians(270)+radians(map(minute() + (second()/60.0), 0, 60, 0, 360)));    //弧の表示
  text(minute() + "m", 190, 110);   //文字表示
  
  //===秒===
  stroke(34, 139, 34);              //線の色
  arc(310,100,100,100,radians(270),radians(270)+radians(map(second(), 0, 60, 0, 360)));                      //弧の表示
  text(second() + "s", 310, 110);   //文字表示
}
