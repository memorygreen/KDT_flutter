void main(){
  add1(); //21
  add2(10, 11); //21
  print(add3()); //21
  print(add4(10,11)); //21

}

// 리턴타입 메소드명(매개변수){
//
// retrun
// }

// 1. 리턴타입X , 매개변수 X
void add1(){
  print(21);
}

// 2. 리턴타입X, 매개변수 O
void add2(int num1, num2){ // 매개변수 타입을 안 적어도 됩니다!
  print(num1 + num2);
}

// 3. 리턴타입O, 매개변수X
int add3(){ //return int
  return 21;
}

// 4. 리턴타입O, 매개변수O
int add4(num1, num2){
  return num1+num2;
}