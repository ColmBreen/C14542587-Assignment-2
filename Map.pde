class Map
{
  float pos1;
  float pos2;
  float middlePath;
  float hrzMidPath;
  int halfLineWidth = 30;
  
  Map()
  {
    pos1 = width/6;
    pos2 = height/6;
    middlePath = ((width/6)*5)/2+pos1;
    hrzMidPath = ((pos2*5)/2);
  }
  
  void RenderMap()
  {
    stroke(0, 0, 255);
    line(pos1, 0, pos1, height);
    line(0, pos2*5, width, pos2*5);
    line(middlePath-halfLineWidth, 0, middlePath-halfLineWidth, hrzMidPath-halfLineWidth);
    line(middlePath+halfLineWidth, 0, middlePath+halfLineWidth, hrzMidPath-halfLineWidth);
    line(middlePath+halfLineWidth, hrzMidPath+halfLineWidth, middlePath+halfLineWidth, pos2*5);
    line(middlePath-halfLineWidth, hrzMidPath+halfLineWidth, middlePath-halfLineWidth, pos2*5);
    line(pos1+(halfLineWidth*2), hrzMidPath-halfLineWidth, middlePath-halfLineWidth, hrzMidPath-halfLineWidth);
    line(pos1+(halfLineWidth*2), hrzMidPath+halfLineWidth, middlePath-halfLineWidth, hrzMidPath+halfLineWidth);
    line(middlePath+halfLineWidth, hrzMidPath+halfLineWidth, width-(halfLineWidth*2), hrzMidPath+halfLineWidth);
    line(middlePath+halfLineWidth, hrzMidPath-halfLineWidth, width-(halfLineWidth*2), hrzMidPath-halfLineWidth);
  }
}