int [][]go=
{
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
};
//int go[9][9]; C語言
//int [][]go=new int[9][9];
void setup()
{
  size(500,500);
}
void draw()
{
  background(253,236,180);
  for(int i=0;i<9;i++)
  {
    line(50+50*i,50,50+50*i,450);
    line(50,50+50*i,450,50+50*i);
  }
  for(int i=0;i<9;i++)
  {
    for(int j=0;j<9;j++)
    {
      if(go[i][j]==1)
      {
        int x=50+50*j, y=50*i+50;
        fill(255); ellipse(x,y,40,40);
      }
    }
  }
}
void mousePressed()
{
  int j=(mouseX-50)/50;
  int i=(mouseY-50)/50;
  go[i][j]=1;
}
