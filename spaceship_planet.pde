Planet terra; 
Planet praxius;
Planet morag;
Planet alderaan;
Planet scarif;
Spaceship milleniumfalcon;

void setup()
{
  background(0);
  size(1200, 800); //<>//
  
  milleniumfalcon = new Spaceship();
  terra = new Planet();
  PImage planet = loadImage("planet2.png");
  PImage planet3 = loadImage("planet3.png");
  PImage planet4 = loadImage("planet4.png");
  PImage planet5 = loadImage("planet5.png");
  praxius = new Planet(new PVector(100, 100),0.2,planet);
  morag = new Planet(new PVector(730, 130),0.6,planet3);
  alderaan = new Planet(new PVector(1000, 650),1,planet4);
  scarif = new Planet(new PVector(170, 550),1.5,planet5);
}

void draw()
{
  fill(0, 0, 0, 30);
  rect(0, 0, width, height);
  terra.Draw();
  praxius.Draw();
  morag.Draw();
  alderaan.Draw();
  scarif.Draw();
  milleniumfalcon.Doodle();
  milleniumfalcon.bounce();
  milleniumfalcon.pull(terra.location, terra.gravity);
  milleniumfalcon.pull(praxius.location, praxius.gravity);
  milleniumfalcon.pull(morag.location, morag.gravity);
  milleniumfalcon.pull(alderaan.location, alderaan.gravity);
  milleniumfalcon.pull(scarif.location, scarif.gravity);
  milleniumfalcon.move();
}