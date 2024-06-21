void main(){
  // 조건문 - if, else, else if, switch

  // if(조건식) {}

  // 문자열 비교 ==
  String s1 = '안녕';
  String s2 = '안녕';

  if(s1 == s2){ //안녕하세요
    print('안녕하세요');
  }


  // switch문
  // switch(식){
        // case 값:
        //   break;
        // default:
        //  break;
  // }

  int num1 = 10;

    switch(num1) { //10입니다.
      // dart3 버전 오면서 break 생략가능
      // case 문에 값 뿐만 아니라 비교식 가능
      case <= 10:
        print("10입니다.");
      case 11:
        print('11입니다');
      default:
        print("그 외 입니다.");

    }



}