Star[] bob = new Star [200];
ArrayList <Asteroid> steve = new ArrayList <Asteroid>();
Spaceship anch = new Spaceship();
ArrayList <Bullet> gepa = new ArrayList <Bullet>();
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
      if(dist(steve.get(p).getMyX(), steve.get(p).getMyY(), anch.getMyX(), anch.getMyY()) < 20){
          steve.remove(p);
          break;
        }
        for(int k = 0; k < gepa.size(); k++)
          if(dist(steve.get(p).getMyX(), steve.get(p).getMyY(), gepa.get(k).getMyX(), gepa.get(k).getMyY()) < 20){
            steve.remove(p);
            gepa.remove(k);
            break;
        }
    }
  for(int k = 0; k < gepa.size(); k++){
      gepa.get(k).show();
      gepa.get(k).move();
    }
  anch.move();
  anch.show();
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
      anch.stop();
      anch.hyperSpace();
  }else if(key == 'w'){
      anch.accelerate(.5);
  }else if(key == 'a'){
      anch.turn(-30);
  }else if(key == 'd'){
      anch.turn(30);
    }
   else if(key == ' '){
      if(gepa.size() < 8)
        gepa.add(new Bullet());
   }
  }
