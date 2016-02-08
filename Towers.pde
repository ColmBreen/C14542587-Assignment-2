class Towers extends GameObject
{
  Towers()
  {
  }
  
  void Update()
  {
  }
  
  void Render()
  {
  }
  
  void Place()
  { 
  }
  
  int TowerPlace()
  {
    if(mouseX > (pos1 + halfLineWidth*4) && mouseX < middlePath - halfLineWidth && 
    mouseY > halfLineWidth*3 && mouseY < hrzMidPath - halfLineWidth)
    {
      if(mouseX < halfFirstBoxW)
      {
        if(mouseY < halfFirstBoxV)
        {
          towerCheck[0] = true;
          return 0;
        }
        else
        {
          towerCheck[2] = true;
          return 2;
        }
      }
      else
      {
        if(mouseY < halfFirstBoxV)
        {
          towerCheck[1] = true;
          return 1;
        }
        else
        {
          towerCheck[3] = true;
          return 3;
        }
      }
    }
    if(mouseX < (width - halfLineWidth*4) && mouseX > middlePath + halfLineWidth && 
    mouseY > halfLineWidth*3 && mouseY < hrzMidPath - halfLineWidth)
    {
      if(mouseX < halfRightBoxW)
      {
        if(mouseY < halfFirstBoxV)
        {
          towerCheck[4] = true;
          return 4;
        }
        else
        {
          towerCheck[6] = true;
          return 6;
        }
      }
      else
      {
        if(mouseY < halfFirstBoxV)
        {
          towerCheck[5] = true;
          return 5;
        }
        else
        {
          towerCheck[7] = true;
          return 7;
        }
      }
    }
    if(mouseX > (pos1 + halfLineWidth*4) && mouseX < middlePath - halfLineWidth && 
    mouseY > hrzMidPath + halfLineWidth && mouseY < pos2*5 - (halfLineWidth*3))
    {
     if(mouseX < halfFirstBoxW)
     {
       if(mouseY < halfBottomBoxV)
       {
         towerCheck[8] = true;
         return 8;
       }
       else
       {
         towerCheck[10] = true;
         return 10;
       }
     }
     else
     {
       if(mouseY < halfBottomBoxV)
       {
         towerCheck[9] = true;
         return 9;
       }
       else
       {
         towerCheck[11] = true;
         return 11;
       }
     }
    }
    if(mouseX < (width - halfLineWidth*4) && mouseX > middlePath + halfLineWidth && 
    mouseY > hrzMidPath + halfLineWidth && mouseY < pos2*5 - (halfLineWidth*3))
    {
     if(mouseX < halfRightBoxW)
     {
       if(mouseY < halfBottomBoxV)
       {
         towerCheck[12] = true;
         return 12;
       }
       else
       {
         towerCheck[14] = true;
         return 14;
       }
     }
     else
     {
       if(mouseY < halfBottomBoxV)
       {
         towerCheck[13] = true;
         return 13;
       }
       else
       {
         towerCheck[15] = true;
         return 15;
       }
     }
    }
    else
     {
       return 50;
     }
  }
}