PImage BuildingFireImage;
int[] LuckyPeople = new int[7];



void setup ()
{
 size(1000,700); 
 BuildingFireImage = loadImage("BuildingFire.png");
 BuildingFireImage.resize(1000,700);
}



void draw ()
{ 
image(BuildingFireImage, 0, 0);

  for (int i=0; i<10; i++)
  {
    Draw LuckyPeople(x,y);
    LuckyPeople[i] = LuckyPeople[i] + 2

    if (LuckyPeople[i] < 695)
    {
      LuckyPeople[i] = (int)random(0,700);
    }
  }
}



void LuckyPeople(int x, int y)
{
  fill(255,255,255);
  ellipse(70,70,x,y);
  rect(30,50,x+40, y);
}
