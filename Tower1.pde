class Tower1 extends GameObject
{  
  Tower1()
  {
    starPos = new PVector(pos1, pos2*5);
  }
  
  void Render()
  {
    starPos = new PVector(pos1, pos2*5);
    noFill();
    stroke(0, 0, 255);
    rectMode(CORNER);
    rect((starPos.x), (starPos.y), pos1, pos2);
    rectMode(CENTER);
    stroke(255);
    fill(255);
    rect((starPos.x+(pos1/2)), starPos.y + (pos2/2), 60, 50);
    fill(255, 0, 0);
    rect((starPos.x+(pos1/2)), starPos.y + (pos2/2), 40, 30);     
  }
  
  void Place()
  {
    if(mouseX > (mapping.pos1 + mapping.halfLineWidth*4) && mouseX < mapping.middlePath - mapping.halfLineWidth && 
    mouseY > mapping.halfLineWidth*3 && mouseY < mapping.hrzMidPath - mapping.halfLineWidth)
    {
      if(mouseX < halfFirstBoxW)
      {
        if(mouseY < halfFirstBoxV)
        {
          towerCheck[0] = true;
        }
        else
        {
          towerCheck[2] = true;
        }
      }
      else
      {
        if(mouseY < halfFirstBoxV)
        {
          towerCheck[1] = true;
        }
        else
        {
          towerCheck[3] = true;
        }
      }
    }
    //if(mouseX > (mapping.pos1 + mapping.halfLineWidth*4) && mouseX < mapping.middlePath - mapping.halfLineWidth && 
    //mouseY > mapping.halfLineWidth*3 && mouseY < mapping.hrzMidPath - mapping.halfLineWidth)
    //{
    //  if(mouseX < halfFirstBoxW)
    //  {
    //    if(mouseY < halfFirstBoxV)
    //    {
    //      towerCheck[0] = true;
    //    }
    //    else
    //    {
    //      towerCheck[3] = true;
    //    }
    //  }
    //  else
    //  {
    //    if(mouseY < halfFirstBoxV)
    //    {
    //      towerCheck[2] = true;
    //    }
    //    else
    //    {
    //      towerCheck[4] = true;
    //    }
    //  }
    //}
    //if(mouseX > (mapping.pos1 + mapping.halfLineWidth*4) && mouseX < mapping.middlePath - mapping.halfLineWidth && 
    //mouseY > mapping.halfLineWidth*3 && mouseY < mapping.hrzMidPath - mapping.halfLineWidth)
    //{
    //  if(mouseX < halfFirstBoxW)
    //  {
    //    if(mouseY < halfFirstBoxV)
    //    {
    //      towerCheck[0] = true;
    //    }
    //    else
    //    {
    //      towerCheck[3] = true;
    //    }
    //  }
    //  else
    //  {
    //    if(mouseY < halfFirstBoxV)
    //    {
    //      towerCheck[2] = true;
    //    }
    //    else
    //    {
    //      towerCheck[4] = true;
    //    }
    //  }
    //}
    //if(mouseX > (mapping.pos1 + mapping.halfLineWidth*4) && mouseX < mapping.middlePath - mapping.halfLineWidth && 
    //mouseY > mapping.halfLineWidth*3 && mouseY < mapping.hrzMidPath - mapping.halfLineWidth)
    //{
    //  if(mouseX < halfFirstBoxW)
    //  {
    //    if(mouseY < halfFirstBoxV)
    //    {
    //      towerCheck[0] = true;
    //    }
    //    else
    //    {
    //      towerCheck[3] = true;
    //    }
    //  }
    //  else
    //  {
    //    if(mouseY < halfFirstBoxV)
    //    {
    //      towerCheck[2] = true;
    //    }
    //    else
    //    {
    //      towerCheck[4] = true;
    //    }
    //  }
    //}
  }
  
  void Update()
  {
    if(towerCheck[0] == true)
    {
     rectMode(CENTER);
     stroke(255);
     fill(255);
     starPos.x = ((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4);
     starPos.y = ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3;
     rect(starPos.x, starPos.y, 60, 50);
     fill(255, 0, 0);
     rect(starPos.x, starPos.y, 40, 30); 
    }
    else if(towerCheck[1] == true)
    {
    rectMode(CENTER);
    stroke(255);
    fill(255);
    starPos.x = (((middlePath - halfLineWidth) - halfFirstBoxW)/2) + (halfFirstBoxW);
    starPos.y = ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3;
    rect(starPos.x, starPos.y, 60, 50);
    fill(255, 0, 0);
    rect(starPos.x, starPos.y, 40, 30); 
    }
    if(towerCheck[2] == true)
    {
    rectMode(CENTER);
    stroke(255);
    fill(255);
    starPos.x = ((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4);
    starPos.y = (((hrzMidPath - halfLineWidth) - halfFirstBoxV)/2) + halfFirstBoxV;
    rect(starPos.x, starPos.y, 60, 50);
    fill(255, 0, 0);
    rect(starPos.x, starPos.y, 40, 30); 
    }
    if(towerCheck[3] == true)
    {
    rectMode(CENTER);
    stroke(255);
    fill(255);
    starPos.x = (((middlePath - halfLineWidth) - halfFirstBoxW)/2) + (halfFirstBoxW);
    starPos.y = (((hrzMidPath - halfLineWidth) - halfFirstBoxV)/2) + halfFirstBoxV;
    rect(starPos.x, starPos.y, 60, 50);
    fill(255, 0, 0);
    rect(starPos.x, starPos.y, 40, 30); 
    }
    //if(towerCheck[0] == true)
    //{
    // rectMode(CENTER);
    // stroke(255);
    // fill(255);
    // rect(((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4), ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3, 60, 50);
    // fill(255, 0, 0);
    // rect(((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4), ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3, 40, 30); 
    //}
    //if(towerCheck[0] == true)
    //{
    // rectMode(CENTER);
    // stroke(255);
    // fill(255);
    // rect(((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4), ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3, 60, 50);
    // fill(255, 0, 0);
    // rect(((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4), ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3, 40, 30); 
    //}
    //if(towerCheck[0] == true)
    //{
    // rectMode(CENTER);
    // stroke(255);
    // fill(255);
    // rect(((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4), ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3, 60, 50);
    // fill(255, 0, 0);
    // rect(((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4), ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3, 40, 30); 
    //}
    //if(towerCheck[0] == true)
    //{
    // rectMode(CENTER);
    // stroke(255);
    // fill(255);
    // rect(((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4), ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3, 60, 50);
    // fill(255, 0, 0);
    // rect(((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4), ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3, 40, 30); 
    //}
    //if(towerCheck[0] == true)
    //{
    // rectMode(CENTER);
    // stroke(255);
    // fill(255);
    // rect(((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4), ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3, 60, 50);
    // fill(255, 0, 0);
    // rect(((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4), ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3, 40, 30); 
    //}
    //if(towerCheck[0] == true)
    //{
    // rectMode(CENTER);
    // stroke(255);
    // fill(255);
    // rect(((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4), ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3, 60, 50);
    // fill(255, 0, 0);
    // rect(((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4), ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3, 40, 30); 
    //}
    //if(towerCheck[0] == true)
    //{
    // rectMode(CENTER);
    // stroke(255);
    // fill(255);
    // rect(((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4), ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3, 60, 50);
    // fill(255, 0, 0);
    // rect(((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4), ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3, 40, 30); 
    //}
    //if(towerCheck[0] == true)
    //{
    // rectMode(CENTER);
    // stroke(255);
    // fill(255);
    // rect(((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4), ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3, 60, 50);
    // fill(255, 0, 0);
    // rect(((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4), ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3, 40, 30); 
    //}
    //if(towerCheck[0] == true)
    //{
    // rectMode(CENTER);
    // stroke(255);
    // fill(255);
    // rect(((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4), ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3, 60, 50);
    // fill(255, 0, 0);
    // rect(((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4), ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3, 40, 30); 
    //}
    //if(towerCheck[0] == true)
    //{
    // rectMode(CENTER);
    // stroke(255);
    // fill(255);
    // rect(((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4), ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3, 60, 50);
    // fill(255, 0, 0);
    // rect(((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4), ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3, 40, 30); 
    //}
    //if(towerCheck[0] == true)
    //{
    // rectMode(CENTER);
    // stroke(255);
    // fill(255);
    // rect(((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4), ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3, 60, 50);
    // fill(255, 0, 0);
    // rect(((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4), ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3, 40, 30); 
    //}
    //if(towerCheck[0] == true)
    //{
    // rectMode(CENTER);
    // stroke(255);
    // fill(255);
    // rect(((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4), ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3, 60, 50);
    // fill(255, 0, 0);
    // rect(((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4), ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3, 40, 30); 
    //}
    
    for(int i = gameObjects.size() - 1; i >= 0; i--)
    {
    GameObject go = gameObjects.get(i);
     if(go instanceof Tower1)
     {
        for(int j = gameObjects.size() - 1; j >= 0; j--)
        {
          GameObject other = gameObjects.get(j);
          if(other instanceof Enemy1)
          {
            if(go.starPos.dist(other.starPos) < 90)
            {
              //println("Hot!");

            }
          }
        }
      }
    }
    
  }
}