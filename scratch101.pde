PImage cat;
int x ;
int y ;
int angle =0;
void setup()
{
  size(1000,1000);
  cat = loadImage("cat.png");
}

void draw()
{
  background(#FFFFFF);
  pushMatrix();
  translate(x,y);
  rotate(angle*PI/360);
  imageMode(CENTER);
  image(cat,x,y,200,200);
  popMatrix();
}
void keyPressed()
{
  if(key == CODED)
   {
     if(keyCode == UP)
     {
       x += 10; 
     }
     else if(keyCode == DOWN)
     {
       x -=  10; 
     }
     else if(keyCode == RIGHT)
     {
       angle += 15;
     }
     else if(keyCode == LEFT)
     {
       angle -= 15;
     }
   }
}
