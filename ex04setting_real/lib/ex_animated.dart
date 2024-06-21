

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';


class Ex02Animate extends StatelessWidget {
  const Ex02Animate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.red,
          child: DefaultTextStyle(
            style: const TextStyle(
              fontSize: 20.0,
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText('Hello World'),
                WavyAnimatedText('뭐지'),
              ],
              isRepeatingAnimation: true,
              onTap: () {
                print("Tap Event");
              },
            ),
          ),
        ),
      ),
    );
  }
}
