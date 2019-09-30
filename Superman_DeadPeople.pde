// IN THIS GAME, THERE IS A BUILDING FIRE. THEREFORE, SUPERMAN HAS TO SAVE ALL THE GREEN PEOPLE AND AVOID ALL THE RED PEOPLE. 
//IF HE SAVES THE GREEN PEOPLE, YOU GET A POINT HOWEVER IF HE SAVES A RED PERSON, YOU LOSE A POINT

//LP = Lucky People: Green
//ULP = Unlucky People: Red


PImage BuildingFireImage;
PImage SupermanFlyingImage;
int[] LPx = new int[5];
int[] LPy = new int [5];
int[] ULPx = new int [3];
int [] ULPy = new int [3];
int score = 0;


void setup ()
{
  size(1000, 700); 

  BuildingFireImage = loadImage("BuildingFire.png");
  BuildingFireImage.resize(1000, 700);

  SupermanFlyingImage = loadImage("hero.png");
  SupermanFlyingImage.resize(200, 200);

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

  imageMode(CENTER);
  image(SupermanFlyingImage, mouseX, mouseY);
  imageMode(CORNER);

  //THIS FOR LOOP DEALS WITH THE LUCKY PEOPLE COMMANDS
  for (int i=0; i<5; i++)
  {
    LuckyPeople(LPx[i], LPy[i]);
    LPy[i] = LPy[i] + 1;

    if (LPy[i] > 695)
    {
      LPy[i] = (int)random(0, 700);
    }

    if (dist(mouseX, mouseY, LPx[i], LPy[i]) < 50)
    {
      score = score + 1;
      LPy[i] = 100;
      LPx[i] = (int)random(0, 1000);
    }
  }

  // THIS FOR LOOP DEALS WITH THE UNLUCKY PEOPLE COMMANDS 
  for (int i=0; i<3; i++)
  {
    UNLuckyPeople(ULPx[i], ULPy[i]);
    ULPy[i] = ULPy[i] + 1;

    if (ULPy[i] > 695)
    {
      ULPy[i] = (int)random(0, 700);
    }

    if (dist(mouseX, mouseY, ULPx[i], ULPy[i]) < 50)
    {
      score = score - 1;
      ULPy[i] = 100;
      ULPx[i] = (int)random(0, 1000);
    }
  }

  textSize(50);
  fill(0, 0, 0);
  text(score, 925, 70);
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
