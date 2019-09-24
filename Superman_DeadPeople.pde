PImage BuildingFireImage;

void setup ()
{
 size(1000,700); 
 BuildingFireImage = loadImage("BuildingFire.png");
 BuildingFireImage.resize(1000,700);
}


void draw ()
{ 
image(BuildingFireImage, 0, 0);
}
