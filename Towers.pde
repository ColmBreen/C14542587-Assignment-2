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
  
  PVector TowerUpdate(int i)
  {
    if(towerCheck[0] == true && i == 0)
    {
     centre.x = ((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4);
     centre.y = ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3;
     return centre;
    }
    else if(towerCheck[1] == true && i == 1)
    {
    centre.x = (((middlePath - halfLineWidth) - halfFirstBoxW)/2) + (halfFirstBoxW);
    centre.y = ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3;
    return centre;
    }
    if(towerCheck[2] == true && i == 2)
    {
    centre.x = ((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4);
    centre.y = (((hrzMidPath - halfLineWidth) - halfFirstBoxV)/2) + halfFirstBoxV;
    return centre;
    }
    if(towerCheck[3] == true && i == 3)
    {
    centre.x = (((middlePath - halfLineWidth) - halfFirstBoxW)/2) + (halfFirstBoxW);
    centre.y = (((hrzMidPath - halfLineWidth) - halfFirstBoxV)/2) + halfFirstBoxV; 
    return centre;
    }
    if(towerCheck[4] == true && i == 4)
    {
    centre.x = ((halfRightBoxW - (middlePath+halfLineWidth))/2) + (middlePath+halfLineWidth);
    centre.y = ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3;
    return centre;
    }
    if(towerCheck[5] == true && i == 5)
    {
    centre.x = (((width - (halfLineWidth*4)) - halfRightBoxW)/2) + halfRightBoxW;
    centre.y = ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3;
    return centre;
    }
    if(towerCheck[6] == true && i == 6)
    {
    centre.x = ((halfRightBoxW - (middlePath+halfLineWidth))/2) + (middlePath+halfLineWidth);
    centre.y = (((hrzMidPath - halfLineWidth) - halfFirstBoxV)/2) + halfFirstBoxV;
    return centre;
    }
    if(towerCheck[7] == true && i == 7)
    {
    centre.x = (((width - (halfLineWidth*4)) - halfRightBoxW)/2) + halfRightBoxW;
    centre.y = (((hrzMidPath - halfLineWidth) - halfFirstBoxV)/2) + halfFirstBoxV;
    return centre;
    }
    if(towerCheck[8] == true && i == 8)
    {
    centre.x = ((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4);
    centre.y = ((((pos2*5) - (halfLineWidth*3)) - halfBottomBoxV)/2) + (hrzMidPath + halfLineWidth); 
    return centre;
    }
    if(towerCheck[9] == true && i == 9)
    {
    centre.x = (((middlePath - halfLineWidth) - halfFirstBoxW)/2) + (halfFirstBoxW);
    centre.y = ((((pos2*5) - (halfLineWidth*3)) - halfBottomBoxV)/2) + (hrzMidPath + halfLineWidth);
    return centre;
    }
    if(towerCheck[10] == true && i == 10)
    {
    centre.x = ((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4);
    centre.y = ((((pos2*5) - (halfLineWidth*3)) - halfBottomBoxV)/2) + halfBottomBoxV;
    return centre;
    }
    if(towerCheck[11] == true && i == 11)
    {
    centre.x = (((middlePath - halfLineWidth) - halfFirstBoxW)/2) + (halfFirstBoxW);
    centre.y = ((((pos2*5) - (halfLineWidth*3)) - halfBottomBoxV)/2) + halfBottomBoxV;
    return centre;
    }
    if(towerCheck[12] == true && i == 12)
    {
    centre.x = ((halfRightBoxW - (middlePath+halfLineWidth))/2) + (middlePath+halfLineWidth);
    centre.y = ((((pos2*5) - (halfLineWidth*3)) - halfBottomBoxV)/2) + (hrzMidPath + halfLineWidth);
    return centre;
    }
    if(towerCheck[13] == true && i == 13)
    {
    centre.x = (((width - (halfLineWidth*4)) - halfRightBoxW)/2) + halfRightBoxW;
    centre.y = ((((pos2*5) - (halfLineWidth*3)) - halfBottomBoxV)/2) + (hrzMidPath + halfLineWidth); 
    return centre;
    }
    if(towerCheck[14] == true && i == 14)
    {
    centre.x = ((halfRightBoxW - (middlePath+halfLineWidth))/2) + (middlePath+halfLineWidth);
    centre.y = ((((pos2*5) - (halfLineWidth*3)) - halfBottomBoxV)/2) + halfBottomBoxV;
    return centre;
    }
    else 
    {
    centre.x = (((width - (halfLineWidth*4)) - halfRightBoxW)/2) + halfRightBoxW;
    centre.y = ((((pos2*5) - (halfLineWidth*3)) - halfBottomBoxV)/2) + halfBottomBoxV;
    return centre;
    }
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
          if(towerCheck[0] == false)
          {
            towerCheck[0] = true;
            return 0;
          }
          else
          {
            return 50;
          }
        }
        else
        {
          if(towerCheck[2] == false)
          {
            towerCheck[2] = true;
            return 2;
          }
          else
          {
            return 50;
          }
        }
      }
      else
      {
        if(mouseY < halfFirstBoxV)
        {
          if(towerCheck[1] == false)
          {
            towerCheck[1] = true;
            return 1;
          }
          else
          {
            return 50;
          }
        }
        else
        {
          if(towerCheck[3] == false)
          {
            towerCheck[3] = true;
            return 3;
          }
          else
          {
            return 50;
          }
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
          if(towerCheck[4] == false)
          {
            towerCheck[4] = true;
            return 4;
          }
          else
          {
            return 50;
          }
        }
        else
        {
          if(towerCheck[6] == false)
          {
            towerCheck[6] = true;
            return 6;
          }
          else
          {
            return 50;
          }
        }
      }
      else
      {
        if(mouseY < halfFirstBoxV)
        {
          if(towerCheck[5] == false)
          {
            towerCheck[5] = true;
            return 5;
          }
          else
          {
            return 50;
          }
        }
        else
        {
          if(towerCheck[7] == false)
          {
            towerCheck[7] = true;
            return 7;
          }
          else
          {
            return 50;
          }
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
         if(towerCheck[8] == false)
          {
            towerCheck[8] = true;
            return 8;
          }
          else
          {
            return 50;
          }
       }
       else
       {
         if(towerCheck[10] == false)
          {
            towerCheck[10] = true;
            return 10;
          }
          else
          {
            return 50;
          }
       }
     }
     else
     {
       if(mouseY < halfBottomBoxV)
       {
         if(towerCheck[9] == false)
          {
            towerCheck[9] = true;
            return 9;
          }
          else
          {
            return 50;
          }
       }
       else
       {
         if(towerCheck[11] == false)
          {
            towerCheck[11] = true;
            return 11;
          }
          else
          {
            return 50;
          }
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
         if(towerCheck[12] == false)
          {
            towerCheck[12] = true;
            return 12;
          }
          else
          {
            return 50;
          }
       }
       else
       {
         if(towerCheck[14] == false)
          {
            towerCheck[14] = true;
            return 14;
          }
          else
          {
            return 50;
          }
       }
     }
     else
     {
       if(mouseY < halfBottomBoxV)
       {
         if(towerCheck[13] == false)
          {
            towerCheck[13] = true;
            return 13;
          }
          else
          {
            return 50;
          }
       }
       else
       {
         if(towerCheck[15] == false)
          {
            towerCheck[15] = true;
            return 15;
          }
          else
          {
            return 50;
          }
       }
     }
    }
    else
     {
       return 50;
     }
  }
}