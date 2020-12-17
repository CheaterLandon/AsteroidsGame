Star[] bob = new Star [200];
ArrayList <Asteroid> steve = new ArrayList <Asteroid>();
Spaceship joe = new Spaceship();
ArrayList <Bullet> yeet = new ArrayList <Bullet>();
int a = 10;
int lev = 1;
public void setup()
{
  size(500,500);
  background(0);
  for(int i = 0; i < bob.length; i++)
  {
    bob[i] = new Star();
  }
  for(int p = 0; p < a; p++)
  {
    steve.add(new Asteroid());
  }
}
public void draw() 
{
 background(0);
  for(int i = 0; i < bob.length; i++)
    {
      bob[i].show();
    }
  for(int p = 0; p < steve.size(); p++)
    {
      steve.get(p).show();
      steve.get(p).move();
      if(dist(steve.get(p).getMyX(), steve.get(p).getMyY(), joe.getMyX(), joe.getMyY()) < 20){
          steve.remove(p);
          break;
        }
               for(int k = 0; k < yeet.size(); k++)
          if(dist(steve.get(p).getMyX(), steve.get(p).getMyY(), yeet.get(k).getMyX(), yeet.get(k).getMyY()) < 20){
            steve.remove(p);
            yeet.remove(k);
            break;
        }
    }
  for(int k = 0; k < yeet.size(); k++){
      yeet.get(k).show();
      yeet.get(k).move();
    }
  joe.move();
  joe.show();
  if(steve.size() == 0){
    for(int p = 0; p < (a+lev*5-5); p++)
    {
      steve.add(new Asteroid());
    }
    lev++;
  }
}
public void keyPressed(){
  if(key == 's'){
      joe.stop();
      joe.hyperSpace();
  }else if(key == 'w'){
      joe.accelerate(.5);
  }else if(key == 'a'){
      joe.turn(-30);
  }else if(key == 'd'){
      joe.turn(30);
    }
       else if(key == ' '){
      if(yeet.size() < 8)
        yeet.add(new Bullet());
   }
  }
