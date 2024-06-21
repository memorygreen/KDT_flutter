import 'package:ex09image/db_image/get_db_image.dart';
import 'package:ex09image/db_image/send_db_image.dart';
import 'package:ex09image/sample/sample_add_gallery.dart';
import 'package:ex09image/sample/sample_gallery.dart';
import 'package:ex09image/sample/sample_getImg.dart';
import 'package:ex09image/sample/sample_multi.dart';
import 'package:ex09image/send_server/sendMultiImg.dart';
import 'package:ex09image/send_server/sendOneImg.dart';
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

      home: ExGetDbImg(),
    );
  }
}
