import 'package:flutter/material.dart';

//240510 금

class LoginPageBtn extends StatelessWidget {
  const LoginPageBtn({super.key, required this.color, required this.onpress, required this.txt});
  final color; //자: 타입 모르면 과감히 생략해도 ㄱㅊ
  final onpress;
  final txt;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: color),
        onPressed: onpress,
        child: Text(txt));
  }
}


//코드 리팩토링
