class RedSquare{

private float redSquareX0;
private float redSquareX1;


  RedSquare(float redSquareX, float redSquareX2){
    this.redSquareX0=redSquareX;
    this.redSquareX1=redSquareX2;
  
  }

void redCubeMove(){ //Responsible for the movement of the red square.


  if(redSquareX0>-100){
        
       redSquareX0=redSquareX0-speed;
       }
           if(redSquareX1>0){
               redSquareX1=redSquareX1-speed;
                    
                 if((redSquareX0<=0)&&(redSquareX1<=0)){
                    redSquareX0=width;
                    redSquareX1=width+150;
                    score++;
                    speed++;
                 }
                        
              }
  

}

void createRedSquare(){ //Responsible for the drawing of the Red square.

  fill(255,0,0);//Set their color to red
  rect(redSquareX0,300,50,50);// Draws the two Red Squares
  rect(redSquareX1,250,50,50);

}

//---//Getters//---//

public float getRedxPos0(){
  return redSquareX0;
}

public float getRedxPos1(){
  return redSquareX1;
}


//---//Setters//---//

public void setRedx0(float redSquareX0){
  this.redSquareX0=redSquareX0;
}

public void setRedx1(float redSquareX1){
   this.redSquareX1=redSquareX1;
}





}
