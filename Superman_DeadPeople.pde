PImage BuildingFireImage;
int[] LPx = new int[5];
int[] LPy = new int [5];
int[] ULPx = new int [3];
int [] ULPy = new int [3];



void setup ()
{
  size(1000, 700); 
  BuildingFireImage = loadImage("BuildingFire.png");
  BuildingFireImage.resize(1000, 700);

  for (int i = 0; i<5; i++)
  {
    LPx[i] = (int)random(0, 1000);
    LPy[i] = (int)random(0, 700);
  }

  for (int i = 0; i<3; i++)
  {
    ULPx[i] = (int)random(0, 1000);
    ULPy[i] = (int)random(0, 700);
  }
}



void draw ()
{ 
  image(BuildingFireImage, 0, 0);

  for (int i=0; i<5; i++)
  {
    LuckyPeople(LPx[i], LPy[i]);
    LPy[i] = LPy[i] + 2;
  }

  for (int i=0; i<3; i++)
  {
    UNLuckyPeople(ULPx[i], ULPy[i]);
    ULPy[i] = ULPy[i] + 2;
  }
}



void LuckyPeople(int x, int y)
{
  fill(255, 255, 255);
  ellipse(x,y,30,30);
  rect(x-15, y+15, 10, 30);
  rect(x+6, y+15, 10, 30);
}

void UNLuckyPeople(int x, int y)
{
  fill(0, 0, 0);
  ellipse(x,y,30,30);
  rect(x-15, y+15, 10, 30);
  rect(x+6, y+15, 10,30);
}
