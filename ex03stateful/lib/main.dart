import 'package:ex03stateful/ex_checkBox.dart';
import 'package:ex03stateful/ex_radio.dart';
import 'package:ex03stateful/ex_switch.dart';
import 'package:ex03stateful/ex_textfield.dart';
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

      home:Ex05Switch()
    );
  }
}

class Ex01button extends StatefulWidget {
  const Ex01button({super.key});

  @override
  State<Ex01button> createState() => _Ex01buttonState();

  //람다식 실행코드가 한 단락 => (자:1개의 실행코드만 되는 경우)
  // int test1() {
  //   return10;
  // }
  // int test1() => 10;

  //dart 접근 제한자 2개
  // public(기본), private(_)

  // void _increment(){
  //   index++;
  // }



}


class _Ex01buttonState extends State<Ex01button> {
  int num1 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('${num1}', style: TextStyle(fontSize: 40),),
            ElevatedButton(onPressed: (){
              setState(() {
                num1++;
              });

            }, child: Text("증가"))
          ],
        ),
      ),
    );
  }
}
