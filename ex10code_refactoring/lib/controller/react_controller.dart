import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class ReactController extends GetxController {
  // .obs() 사용 -> update() 메소드 대체
  // 상태가 변화될 변수에 .obs() 사용할 예정
  // obs를 사용해주기 위해서는 Rx타입으로 변환 (자:Rx는 react의 약자, getX에서 만든 타입)
  // Rx타입은 getx에서 만든 타입 react의 약자로 즉각적으로 반응하는 변수
  RxInt num1 = 0.obs; //자 : obs 는 observation //자: update 메소드 대체하기위해서 obs 사용 //자:상태변화있을 곳에만 obs 붙이면 됨

  // 메소드
  void increaseNum1(){
    num1++;
  }

}