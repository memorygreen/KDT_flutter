import 'package:flutter/material.dart';

class PlatformLoginBtn extends StatelessWidget {
  const PlatformLoginBtn({super.key, required this.color, required this.onpress, required this.img_path, required this.txt});
  final color;
  final onpress;
  final img_path;
  final txt;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                fixedSize: Size(MediaQuery.of(context).size.width*0.8, 40),
                backgroundColor: color,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24))),
            onPressed: onpress,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(img_path,width: 32,height: 32,),
                Text(
                  txt,
                  style: TextStyle(color: Colors.black),
                ),
                Opacity(
                    opacity: 0.0,
                    child: Image.asset(img_path,width: 32,height: 32,)),
              ],
            )
        ),

      ],
    );
  }
}

class PlatformLoginBtn2 extends StatelessWidget {
  const PlatformLoginBtn2({super.key, required this.bg_color, required this.img2, required this.txt2, required this.txt_color2, required this.onpress2});
  final bg_color;
  final img2;
  final txt2;
  final txt_color2;
  final onpress2;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: Size(MediaQuery.of(context).size.width*0.8, 40),
            backgroundColor: bg_color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24))),
        onPressed: onpress2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(img2,width: 32,height: 32,),
            Text(
              txt2,
              style: TextStyle(color: txt_color2),
            ),
            Opacity(
                opacity: 0.0,
                child: Image.asset(img2,width: 32,height: 32,)),
          ],
        )
    );
  }
}
