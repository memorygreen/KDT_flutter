import 'package:ex04setting_real/ex_animated.dart';
import 'package:ex04setting_real/ex_onboarding.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Ex03Onboarding(),
    );
  }
}


class Ex01Toast extends StatelessWidget {
  const Ex01Toast({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ElevatedButton(
          onPressed: (){
            Fluttertoast.showToast(
                msg: "This is Center Short Toast",
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0
            );
          },
            child: Text('토스트 띄우기'),
        ),
      ),
      
      
    );
  }
}
