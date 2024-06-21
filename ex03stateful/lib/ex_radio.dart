import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//240419
class Ex04Radio extends StatefulWidget {
  const Ex04Radio({super.key});

  @override
  State<Ex04Radio> createState() => _Ex04RadioState();
}


// 열거형 변수
// 사용방법 - enum 클래스명 {변수}
enum Gender {man, woman}
class _Ex04RadioState extends State<Ex04Radio> {
  Gender g = Gender.man;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // value - radio 버튼서 어떤 값을 가지고 있는지
            // groupValue - 값이 바뀌는 변수(초기값으로 임의의 값 지정)
            // groupValue와 value가 일치할 시 체크

            RadioListTile(
                title: Text('남성'),
                value: Gender.man, groupValue: g, onChanged: (value){

                setState(() {
                  g = value!;
                });

                print(value);

              }),
            RadioListTile(
                title: Text('여성'),
                value: Gender.woman, groupValue: g, onChanged: (value){
                setState(() {
                g = value!;
                });
                print(value);
            }),

          ],
        ),
      ),
    );
  }
}
