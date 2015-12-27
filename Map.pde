class Map
{
  float pos1;
  float pos2;
  
  Map()
  {
    pos1 = width/8 * 3;
    pos2 = width/8 * 5;
  }
  
  void RenderMap()
  {
    stroke(0, 0, 255);
    line(pos1, height, pos1, 0);
    line(pos2, height, pos2, 0); 
  }
}