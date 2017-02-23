class Planet
{

float gravity;
PVector location;
PImage planet;

Planet()
{
  gravity = 0.6;
  location = new PVector(width/2, height/2);
  planet = loadImage("planet.png");
}

Planet(PVector _location, float _gravity, PImage _image)
{
  location = _location;
  gravity = _gravity;
  planet = _image;
}

void Draw()
{
     fill (255, 255, 255);
     image(planet, location.x, location.y);
}
}