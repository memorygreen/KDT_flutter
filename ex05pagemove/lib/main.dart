import 'package:ex05pagemove/config/route_name.dart';
import 'package:ex05pagemove/screen/ex_blue_page.dart';
import 'package:ex05pagemove/screen/ex_bottom.dart';
import 'package:ex05pagemove/screen/ex_green_page.dart';
import 'package:ex05pagemove/screen/ex_red_page.dart';
import 'package:ex05pagemove/screen/login_page.dart';
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

        initialRoute: '/', //자:최초 페이지
        // routes: {
        //   '/red': (context){ return ExRedPage();},
        //   '/blue' : (context) => ExBluePage(), //자:람다식으로도 표현 가능
        //   '/green': (context) => ExGreenPage()
        // },

        // 자:route_name 사용 시
        routes: name,

      home: ExBottom(),
    );
  }
}


// 첫번째 페이지
class Ex01firstPage extends StatelessWidget {
  const Ex01firstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("첫번째 페이지"),
      ),
      body: Center(
        child: Column(
          children: [
            Text('첫번째 페이지 입니다.',
            style: TextStyle(fontSize: 40),),
            ElevatedButton(onPressed: (){

              // 페이지 이동을 위해 Navigator 객체
              // stack으로 페이지 관리 -> 다음 페이지 이동을 위해 push
              // context는 유지
              // route MaterialPageRoute()

              // Navigator.push(context, MaterialPageRoute(builder: (context){
              //   // return 타입이 widget인 이유 : 이동할 페이지 return
              //   return Ex02SecondPage();
              // }));

              // 코드 살짝 줄이기
              Navigator.push(context, MaterialPageRoute(builder: (_)=>Ex02SecondPage())); //자:builder에는 context 대신 _ 도 사용 가능
            }, child: Text('두번째 페이지로 이동')),
            ElevatedButton(onPressed: (){
              // pushreplacement

              Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>Ex03ThirdPage()));
            }, child: Text('세번째 페이지로 이동'))
            
          ],
        ),
      ),
    );
  }
}

// 두번째 페이지
class Ex02SecondPage extends StatelessWidget {
  const Ex02SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('두번째 페이지 입니다.'),
      ),
      body: Column(
        children: [
          Text("두번째 페이지 입니다."),
          ElevatedButton(onPressed: (){

            // pop
            //Navigator.pop(context); //자:바로 이전페이지! 현재 어디인지 context만 보내주면됨

            // pushAndRemoveUntil - 이전 페이지 모두 삭제
            // route - false --> 이전 페이지 모두 삭제
            // route - true --> 이전 페이지 삭제X
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=>Ex01firstPage()), (route) =>false); //자:push 코드
          }, child: Text('첫번째 페이지로 이동')),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>Ex03ThirdPage()));
          }, child: Text('세번째 페이지로 이동'))
        ],
      ),
    );
  }
}

class Ex03ThirdPage extends StatelessWidget {
  const Ex03ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('세번째 페이지'),
      ),
      body: Column(
        children: [
          Text('세번째 페이지 입니다.'),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>Ex01firstPage()));
          }, child: Text('첫번째 페이지로 이동')),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>Ex02SecondPage()));
          }, child: Text('두번째 페이지로 이동'))
        ],
      ),
    );
  }
}
