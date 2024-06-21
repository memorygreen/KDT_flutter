import 'package:ex05pagemove/screen/ex_blue_page.dart';
import 'package:ex05pagemove/screen/ex_green_page.dart';
import 'package:ex05pagemove/screen/ex_red_page.dart';

class RouteName {
  static const redPage = "/red";
  static const bluePage = "/blue";
  static const greenPage = "/green";


}

var name = { //자: name 이라는 Map
  RouteName.redPage : (context)=>ExRedPage(), //자:main.dart 의 routes 에 쓴거랑 동일 ->길어지면 복잡해서 따로 빼는 것
  RouteName.bluePage : (context)=>ExBluePage(),
  RouteName.greenPage : (context)=>ExGreenPage()

};