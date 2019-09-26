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
    LPy[i] = LPy[i] + 1;
  }

  for (int i=0; i<3; i++)
  {
    UNLuckyPeople(ULPx[i], ULPy[i]);
    ULPy[i] = ULPy[i] + 1;

    if (LPy[i] > 695)
    {
      LPy[i] = (int)random(0, 700);
    }

    if (ULPy[i] > 695)
    {
      ULPy[i] = (int)random(0, 700);
    }
  }
}



void LuckyPeople(int x, int y)
{
  fill(255, 255, 255);

  //head
  strokeWeight(1.5);
  ellipse(x, y, 30, 30);

  //left hand
  strokeWeight(1.5);
  rect(x-15, y+15, 10, 30);

  //right hand
  rect(x+6, y+15, 10, 30);

  //white left leg
  strokeWeight(4);
  stroke(255, 255, 255);
  line(x-10, y+45, x-26, y+75);

  //white right leg
  strokeWeight(6);
  stroke(0, 0, 0);
  line(x+15, y+45, x+26, y+75);

  strokeWeight(4);
  stroke(255, 255, 255);
  line(x+15, y+45, x+26, y+75);

  //white left leg
  strokeWeight(6);
  stroke(0,0,0);
  line(x-10, y+45, x-26, y+75);
  
  strokeWeight(4);
  stroke(255, 255, 255);
  line(x-10, y+45, x-26, y+75);

  stroke(0, 0, 0);
  strokeWeight(1);
}



void UNLuckyPeople(int x, int y)
{
  fill(0, 0, 0);

  //head
  ellipse(x, y, 30, 30);

  //left hand
  rect(x-15, y+15, 10, 30);

  //right hand
  rect(x+6, y+15, 10, 30);

  //left leg
  strokeWeight(4);
  line(x-10, y+45, x-26, y+75);

  //right leg
  strokeWeight(4);
  line(x+15, y+45, x+26, y+75);
}
