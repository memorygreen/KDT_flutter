import 'package:flutter/material.dart';

class Ex02Check extends StatefulWidget {
  const Ex02Check({super.key});

  @override
  State<Ex02Check> createState() => _Ex02CheckState();
}


class _Ex02CheckState extends State<Ex02Check> {
  bool isChecked = false;

  // List 관리
  List<bool> checkList = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Column(
          children: [
            // value : check 여부 - true - 체크// false - 체크해제
            Row(
              children: [
                Checkbox(value: checkList[0], onChanged: (v){
                  // onChange 안의 매개변수 (v) : 체크가 해지되어 있으면 - true/
                  //                            체크가 되어있으면 false
                  print(v);
                  
                  //? - null 허용 기호
                  //! - null 불허 기호
                  setState(() {
                    checkList[0] = v!;
                  });
                
                }),
                
                Text('운동')
                
              ],
            ),
            Checkbox(value: checkList[1], onChanged: (v){
              setState(() {
                checkList[1] = v!;
                

                
              });
            }),
            Checkbox(value: checkList[2], onChanged: (v){
              setState(() {
                checkList[2] = v!;
              });
            }),

          ],
        ),
      )

    );
  }
}

class Ex03Check extends StatefulWidget {
  const Ex03Check({super.key});

  @override
  State<Ex03Check> createState() => _Ex03CheckState();
}

class _Ex03CheckState extends State<Ex03Check> {
  List<bool> checkList = [false, false, false];
  List<String> hobbyList = ['운동', '베이킹'];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body:SafeArea(
          child: Column(
            children: [
              // value : check 여부 - true - 체크// false - 체크해제

              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading, //자:왼쪽으로

                  //240419 금
                  //포매팅의 경우 연산, 리스트, 메소드를 사용할 때
                  // {} 로 감싸서 사용
                  title: Text('${hobbyList[0]}'),
                  
                  value: checkList[1], onChanged: (v){
                setState(() {
                  checkList[1] = v!;


                  //240419
                  // 스낵바 띄우는 방법
                  if(checkList[1] = v!){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('${hobbyList[0]}'),
                      duration: Duration(seconds: 1),
                    ),
                  );
                  }


                });
              }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading, //자 : 기본은 오른쪽
                  value: checkList[2], onChanged: (v){
                setState(() {
                  checkList[2] = v!;
                });
              },


              ),

            ],
          ),
        )

    );
  }
}
