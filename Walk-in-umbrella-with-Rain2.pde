/**
 * GSVideo movie speed example.
 *
 * Use thce Movie.speed() method to change
 * the playback speed.
 * 
 */

import processing.video.*;
Timer timer;
int stat=1;
Movie movie;
Movie movie2;
float  sp=1;
PImage img;

public void setup() {
    timer = new Timer(1000);
  timer.start();
  
  size(640, 480);
  background(0);
  movie = new Movie(this, "videoplayback.mp4");
  movie2 = new Movie(this, "videoplayback.mp4");
  PFont font = loadFont("DejaVuSans-24.vlw");
  textFont(font, 24);
  movie.loop();
  movie2.loop();
  movie.play();
  movie2.play();

}

public void movieEvent(Movie movie) {
  movie.read();  
}

int ii =0;
public void draw() {    
  image(movie, 0  , 0, width, height);
    
     
  float newSpeed = map(sp, 0, width, 0.1, 2);
  movie.speed(sp);
 // fill(240, 20, 30);
 // text(nfc(newSpeed, 2) + "X", width - 80, 30); 
  text( sp + "X", width - 80, 30); 
  

  textSize(32);

text("存在", 10, 30); 
fill(0, 102, 153); 

  if (timer.isFinished()) {
    sp=0.5;
    movie.pause();
   // background(random(255));
    timer.start();
    
    
    
  }
}  

void keyPressed() {
  println(keyCode);
  movie.play();
  if (keyCode == 49) {
      if(sp!=0.5)
      {
        sp=0.5;
            timer = new Timer(1000);   timer.start();
      }

    } else if (keyCode == 50 ) {
      sp=4;
          timer = new Timer(2000);   timer.start();

    }
}

void keyReleased() {

  
}
