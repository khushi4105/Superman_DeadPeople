PImage BuildingFireImage;
PImage SupermanFlyingImage;
int[] LPx = new int[5];
int[] LPy = new int [5];
int[] ULPx = new int [3];
int [] ULPy = new int [3];

//LP = Lucky People: Green
//ULP = Unlucky Pdo

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
  fill(0, 230, 1);
  
  //head
  strokeWeight(1.5);
  ellipse(x, y, 30, 30);

  //left hand
  strokeWeight(1.5);
  rect(x-15, y+15, 10, 30);

  //right hand
  rect(x+6, y+15, 10, 30);

  //black outline left leg
  strokeWeight(6);
  stroke(0, 0, 0);
  line(x-10, y+45, x-26, y+75);

  //green left leg
  strokeWeight(4);
  stroke(0, 230, 1);
  line(x-10, y+45, x-26, y+75);

  //black outline right leg
  strokeWeight(6);
  stroke(0, 0, 0);
  line(x+15, y+45, x+26, y+75);

  //green right leg
  strokeWeight(4);
  stroke(0, 230, 1);
  line(x+15, y+45, x+26, y+75);

  stroke(0, 0, 0);
  strokeWeight(1);
}



void UNLuckyPeople(int x, int y)
{
  fill(250, 3, 3);

  //head
  strokeWeight(1.5);
  ellipse(x, y, 30, 30);

  //left hand
  strokeWeight(1.5);
  rect(x-15, y+15, 10, 30);

  //right hand
  rect(x+6, y+15, 10, 30);

  //black outline left leg
  strokeWeight(6);
  stroke(0, 0, 0);
  line(x-10, y+45, x-26, y+75);

  //red left leg
  strokeWeight(4);
  stroke(250, 3, 3);
  line(x-10, y+45, x-26, y+75);

  //black outline right leg
  strokeWeight(6);
  stroke(0, 0, 0);
  line(x+15, y+45, x+26, y+75);

  //red right leg
  strokeWeight(4);
  stroke(250, 3, 3);
  line(x+15, y+45, x+26, y+75);

  stroke(0, 0, 0);
  strokeWeight(1);
}
