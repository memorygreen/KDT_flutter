import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StorePage(),
    );
  }
}

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Woman",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 10,),
              Text(
                "Kids",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Shoes",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Bag",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
