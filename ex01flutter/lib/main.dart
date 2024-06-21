import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( //  디자인 위젯
      home: Ex04Row
        ()
    );
  }
}

class Ex04Row extends StatelessWidget {
  const Ex04Row({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('두번째 예제',
        style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green[200],
      ),
      
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('image/ryan1.jpg', width: 120, height: 120,),
          Text('안녕 내이름은 라이언이야')
        ],
      ),
    );
  }
}

// stless
class Ex04Row_jy extends StatelessWidget {
  const Ex04Row_jy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text('두번째 예제',
        style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.green[200],
      ),
      body: Row(
        children: [
          Image.asset('image/ryan1.jpg', width: 120,height: 120),
          Text('안녕 내 이름은 라이언이야'),
        ],
          crossAxisAlignment: CrossAxisAlignment.start
      ),
    );
  }
}


// stless
class Ex03Column extends StatelessWidget {
  const Ex03Column({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text('첫번째 예제',
        style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('image/ryan1.jpg', width: 120, height: 120,),
            Text('안녕 내이름은 라이언이야'),
          ],
        ),
      ),
    );
  }
}






// stless
class Ex03Column_jy extends StatelessWidget {
  const Ex03Column_jy ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('첫번째 예제'),
        backgroundColor: Colors.pinkAccent,
        ),
      body: SafeArea( child: Column(
        children: [
          Image.asset('image/ryan1.jpg', width: 120, height: 120,),
          Text('안녕 내이름은 라이언이야!'),
          Center()
        ],
       ),
      )
    );


  }
}


// stless
class Ex02Widget extends StatelessWidget {
  const Ex02Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 상단에 배터리, 와이파이가 보여지는 공간을 safearea
      body: SafeArea(
          // 위젯마다 하나의 위젯만 올 수 있는 위젯
          // 여러 개의 위젯이 올 수 있게 하는 위젯 - Row, column
          
          child: Row(
            children: [
              Icon(Icons.add_alarm,
                color: Colors.green,
                size: 50,
              ),
              ElevatedButton(// 참고 : RaisedButton
                  onPressed: (){
                  print('안녕');
                  },
                  child: Text('실행')),
              // 이미지 위젯 image.asset('이미지의 경로')
              Image.asset('image/ryan1.jpg', width: 50, height: 50,)
            ],
          )
      ),

    );
  }
}


// stless
class Ex01 extends StatelessWidget {
  const Ex01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 공사현장에서 높은 곳에 공사를 돕기 위한 큰 틀, 구조물 (자:비계)
      // 개발환경에서 개발을 돕기 위한 큰 틀

      // appbar, body, bottomnavigation bar

      //appbar 만드는 법 - AppBar() 위젯을 사용
      appBar: AppBar(
        // property(요소)
        // 모든 위젯은 요소를 가지고 있습니다
        // 객체지향 프로그래밍 언어
        // 필드와 메소드 간의 중간 클래스 getter, setter 메소드 변환

        // 필드처럼 존재
        title: Text('hello world'),
        // 각각의 요소들은 ,(컴마)로 구분
        backgroundColor: Colors.red[300],


      ),
      body: // 위젯은 한 칸에 하나만 작성이 가능
      // 여러 위젯을 묶을 수 있는 위젯들이 존재 - ROW, COLUMN
      // Row - 가로로 위젯 쌓기
      // Column - 세로로 위젯을 쌓기

      // alt + enter : 감싸고 싶은 위젯에 마우스 클릭


      Column(
        children: [
          Text('안녕하세요 플러터 수업 재밌게 하고 계신가요 ㅎㅎ',
              style: TextStyle(color: Colors.blue, fontSize: 24),
              textAlign: TextAlign.center, // 안 바뀌는 이유 ->
            // 위젯의 크기를 결정하는 방법
            // 데이터가 있는 위젯 - 데이터의 길이만큼만 커집니다
            // 기본적으로 크기를 가지고 있는 위젯 - textfield

            // 상위 위젯을 통해 크기 변경


          ),
          Text('hello')
        ],
      ),

    );
  }
}



