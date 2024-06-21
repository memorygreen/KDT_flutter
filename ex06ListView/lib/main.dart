import 'package:ex06listview/screen/ryan_listview.dart';
import 'package:ex06listview/screen/step_location.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: ExLocation() ,
    );
  }
}


class Ex04GridExtent extends StatelessWidget {
  const Ex04GridExtent({super.key});

  @override
  Widget build(BuildContext context) {
    List<int> intList = List<int>.generate(100, (index)=> index++);

    return Scaffold(
      body: SafeArea(
        child: GridView.builder
          (gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100, // (디바이스(자:혹은 상위 위젯)의) 가로길이 ~/ 100 +1  (자:몫구함)
            // --> 가로 길이가 470이라고 가정 한 칸에 5개가 그려지게 됩니다.

            ),
            itemCount: intList.length,
            itemBuilder: (_, index){
              print(MediaQuery.of(context).size.width);
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.grey[200],
                  child: Text('${intList[index]}'),
                ),
              );
            }),
      ),
    );
  }
}



// gridView의 경우 만드는 방법 2가지
// 카운트 / extent

// Gridview.builder
class Ex03GridCount extends StatelessWidget {
  const Ex03GridCount({super.key});


  @override
  Widget build(BuildContext context) {
    List<int> intList = List<int>.generate(100, (index)=> index++);
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
          itemCount: intList.length,
          // count를 활용하여 그리는 방식 설정
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                    childAspectRatio: 1/2 // 아이템의 가로, 세로 비율 - n/n
            ),
            itemBuilder: (_, index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.grey[200],
                  child: Text('${intList[index]}'),
                ),
              );

        })
      ),
    );
  }
}



class Ex02Horizontal extends StatelessWidget {
  const Ex02Horizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: 120,
          child: ListView.builder(
            // 스크롤 방향 바꾸기
            scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (_, index) {


            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 80,
                height: 80,
                color: Colors.grey[200],
                child: Text('10'),
              ),
            );

          }),
        ),
      ),
    );
  }
}



class Ex01ListView extends StatelessWidget {
  const Ex01ListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<int> intList = List<int>.generate(100, (index)=> index++);
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: intList.length,
            itemBuilder: (_ ,index){
              // itemBuilder를 통해서 return 해주는 코드는
              // 디자인 된 위젯
              // 한 칸이 그려질 위젯

              print(index);

              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  color: Colors.grey[200],
                  child: Text('${intList[index]}'),
                ),
              );
            }),
      ),
    );
  }
}
