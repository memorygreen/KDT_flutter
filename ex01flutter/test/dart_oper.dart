void main(){
  //240411
  // 연산자
  // 산술 연산자
  // + - * / %

  // ~/ -- 몫 연산자
  int num1 = 10;
  int num2 = 7;

  print(num1 ~/ num2); //1

  // / - 나누기 연산자 (결과값이 double 반환)
  //int result = num1 / num2; //자 : 안 담김
  double result = num1 / num2;
  print(result); //1.4285714285714286


  // 논리 연산자
  // &&, ||, !

  // 비교 연산자
  // ==(같다) !=(같지 않다) < , >, <=, >=

  // 복합대입 연산자
  // += , -=, *=   (a+=3) == (a= a+3)
  // 나누기 연산자 - double 리턴
  //int num4 = 7; //자 : 안됨
  num num4 = 7; //자 : 또는 double num4 = 7;
  num4/=2;

  // 증감연산자 (단항 연산자) ++, --
  // ++전위 연산자 후위연산자
  // ++변수, 변수++ //자:전위연산자가 먼저다! 계산하고 출력!

  // 삼항 연산자
  // 연산 ? 참일 경우 : 거짓일 경우
  int num5 = 10;
  int num6 = 7;

  (num5>num6)? print("$num5가 더 큽니다") : print("$num6이 더 큽니다"); //10가 더 큽니다

  // casting - 형변환

  int num7 = 10;
  String s4 = "20";
  double d3 = 3.14;

  // 숫자형이 아닌 서로 다른 형을 연산하는 것은 불가능
  //print(s4 + num7); //자:불가능
  // 다른 형끼리는 연산 가능
  print(s4 + "world"); //20world

  //String->int
  // int.parse(문자형)
  print(num7 + int.parse(s4)); //30

  // Strgin -> double
  // double.parse(문자형)
  print(d3 + double.parse(s4)); //23.14

  // int, double -> String
  // .toString
  // print(num7.toString() + s4); //1020



}