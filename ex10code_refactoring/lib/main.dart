import 'package:ex10code_refactoring/code_refactoring/ex_code.dart';
import 'package:ex10code_refactoring/screen/react_getx.dart';
import 'package:ex10code_refactoring/screen/simple_getx.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: RxButton(),
    );
  }
}
