PImage falcon;

class Spaceship
{
  PVector velocity;
  PVector position;
  
  Spaceship()
  {
    position = new PVector(50, 50);
    velocity = new PVector(0.05, 0.05);
  }
  void Doodle()
  {
    fill (200, 200, 200);
    PImage falcon = loadImage("falcon.png");
    image(falcon, position.x, position.y);
     noStroke();
  }
  
  void move()
  {
    position.add(velocity);
  }
  
  void pull(PVector planetpos, float gravity)
  {
    PVector gravDir = planetpos.copy().sub(position);
    gravDir.normalize();
    gravDir.mult(gravity);
    velocity.add(gravDir);
    velocity.limit(40);
  }
  
  void bounce()
  {
    if ((position.x > width) || (position.x < 0))
    {
      velocity.x = velocity.x * -1; 
    }
    if ((position.y > height) || (position.y < 0))
    {
      velocity.y = velocity.y * -1;
    }
  }
   
}