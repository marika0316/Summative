int COUNT = 100;
float[] a = new float[COUNT]; 
float[] b = new float [COUNT];
float[] speed= new float[100];
PImage space;
int x = width/2;
int y = height/2;
boolean flashy = false;

void setup()
{
  size(800, 800); 
  space=loadImage("spaceship.png");

  background (0);
  stroke(33, 231, 255);
  strokeWeight(6);

  for (int i = 0; i<COUNT; i++)
  {

    a[i] = random(0, width);
    b[i] = random(0, height);
    speed[i] = random(1, 8);
    i = i+1;
  }
}
void draw()
{
  
  background(0); 
  Flashy();
  

  for (int i = 0; i<COUNT; i++)
  {
    point(a[i], b[i]);

    a[i] = a[i]-speed[i];
    if (a[i]<0)
    {
      a[i] = width;
    }
    i=i+1;

    image(space, x, y);
    x=x+1;
    if (x>width)
    {
      x=-1500;
    }
    if (x<-10000)
    {
      x=width+10000;
    }
  }
}

void Flashy()
{
   if (flashy == true)
  {
    background(random(255), random(255), random(255));
  }

  if (flashy == false)
  {
    background(0);
  }
  
  if(key=='a')
  {
    flashy = true;
  }
 if (key=='w')
 {
 flashy = false;
 }
}