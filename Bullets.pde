//class Bullets extends GameObject
//{
  
//  float speed;
  
//  Bullets()
//  {
//    speed = 10.0f;
//    starPos = new PVector(0, 0);
//  }
  
//  void Update()
//  {
//    forward.x = sin(theta);
//    forward.y = - cos(theta);
    
//    forward.mult(speed);
//    starPos.add(forward);
//  }
  
//  void Render()
//  {
//    pushMatrix();
//    translate(starPos.x, starPos.y);
//    rotate(theta);
//    line(0, -5, 0, 5);
//    popMatrix(); 
//  }
  
//  void Place()
//  {
//  }
//}