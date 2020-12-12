
Star[] skyy = new Star [200];
ArrayList <Asteroid> qwe = new ArrayList <Asteroid>();
Spaceship anch = new Spaceship();
ArrayList <Bullet> gepa = new ArrayList <Bullet>();
int a = 10;
int lev = 1;
public void setup()
{
  size(500,500);
  background(0);
  for(int i = 0; i < skyy.length; i++)
  {
    skyy[i] = new Star();
  }
  for(int p = 0; p < a; p++)
  {
    qwe.add(new Asteroid());
  }
}
public void draw() 
{
 background(0);
  for(int i = 0; i < skyy.length; i++)
    {
      skyy[i].show();
    }
  for(int p = 0; p < qwe.size(); p++)
    {
      qwe.get(p).show();
      qwe.get(p).move();
      if(dist(qwe.get(p).getMyX(), qwe.get(p).getMyY(), anch.getMyX(), anch.getMyY()) < 20){
          qwe.remove(p);
          break;
        }
        for(int k = 0; k < gepa.size(); k++)
          if(dist(qwe.get(p).getMyX(), qwe.get(p).getMyY(), gepa.get(k).getMyX(), gepa.get(k).getMyY()) < 20){
            qwe.remove(p);
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
  if(qwe.size() == 0){
    for(int p = 0; p < (a+lev*5-5); p++)
    {
      qwe.add(new Asteroid());
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

