import 'package:dio/dio.dart';
import 'package:ex08db/screen/join_page.dart';
import 'package:ex08db/screen/login_page.dart';
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

      home: const LoginPage(),
    );
  }
}

class ExSendData extends StatelessWidget {
  const ExSendData({super.key});

  @override
  Widget build(BuildContext context) {

    // 객체 생성 먼저!(자:dio! cf. http 는 바로 썼었음)
    Dio dio = Dio();
    TextEditingController testCon = TextEditingController();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            //자 : TextField 에 있는 글자 가져오기
            TextField(
              controller: testCon,
            ),
            
            ElevatedButton(onPressed: () async {
              String txt = testCon.text;
              print(txt);

              //자: 버튼 눌렀을 때 해당 데이터 보내주기
               var res = await dio.get('http://211.48.213.193:8091/test',
                   queryParameters: {'id':txt});

               //print(res); //자:hello 떠야함(vscode에서 쓴 것)

               print(res.statusCode);
               print(res.data);


            }, child: Text("전송"))
          ],
        ),
      ),
    );
  }
}
