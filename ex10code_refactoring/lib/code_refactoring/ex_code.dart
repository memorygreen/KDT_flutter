import 'package:ex10code_refactoring/component/ex_btn.dart';
import 'package:ex10code_refactoring/component/ex_btn2.dart';
import 'package:flutter/material.dart';

//240510 금

class ExLoginPage extends StatelessWidget {
  const ExLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('로그인 페이지'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(12),
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        label: Row(
                          children: [
                            Icon(Icons.account_circle),
                            Text("email 입력 "),
                          ],
                        ),
                        hintText: "example@example.com",
                        hintStyle: TextStyle(color: Colors.grey[300])),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                      decoration: InputDecoration(
                        label: Row(
                          children: [
                            Icon(Icons.key),
                            Text("pw 입력 "),
                          ],
                        ),
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent),
                        onPressed: () {},
                        child: Text('로그인하기')),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey),
                        onPressed: () {},
                        child: Text('회원가입하기'))
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  color: Colors.grey[200],
                  width: double.infinity,
                  height: 2,
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(MediaQuery.of(context).size.width*0.8, 40),
                            backgroundColor: Colors.yellowAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24))),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('image/klogo.png',width: 32,height: 32,),
                            Text(
                              '카카오로 로그인하기',
                              style: TextStyle(color: Colors.black),
                            ),
                            Opacity(
                                opacity: 0.0,
                                child: Image.asset('image/klogo.png',width: 32,height: 32,)),
                          ],
                        )),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(MediaQuery.of(context).size.width*0.8, 40),
                            backgroundColor: Colors.grey[200],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24))),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('image/glogo.png',width: 32,height: 32,),
                            Text(
                              '구글 로그인하기',
                              style: TextStyle(color: Colors.black),
                            ),
                            Opacity(
                                opacity: 0.0,
                                child: Image.asset('image/glogo.png',width: 32,height: 32,)),
                          ],
                        )),

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ExLoginPage2 extends StatelessWidget {
  const ExLoginPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('로그인 페이지'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(12),
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        label: Row(
                          children: [
                            Icon(Icons.account_circle),
                            Text("email 입력 "),
                          ],
                        ),
                        hintText: "example@example.com",
                        hintStyle: TextStyle(color: Colors.grey[300])),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                      decoration: InputDecoration(
                        label: Row(
                          children: [
                            Icon(Icons.key),
                            Text("pw 입력 "),
                          ],
                        ),
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    LoginPageBtn(color: Colors.blueAccent, onpress: (){}, txt: "로그인하기"),
                    LoginPageBtn(color: Colors.grey, onpress: (){}, txt: "회원가입하기")
                  ],
                ),
                SizedBox(
                  height: 40,

                ),
                Container(
                  color: Colors.grey[200],
                  width: double.infinity,
                  height: 2,
                ),
                SizedBox(
                  height: 40,
                ),
                PlatformLoginBtn(color: Colors.yellowAccent, onpress: (){}, img_path: 'image/klogo.png', txt: '카카오톡으로 로그인하기'),
                PlatformLoginBtn(color: Colors.grey[10], onpress: (){}, img_path: 'image/glogo.png', txt: '구글로 로그인하기'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ExLoginPage2_jy extends StatelessWidget {
  const ExLoginPage2_jy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('로그인 페이지'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(12),
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        label: Row(
                          children: [
                            Icon(Icons.account_circle),
                            Text("email 입력 "),
                          ],
                        ),
                        hintText: "example@example.com",
                        hintStyle: TextStyle(color: Colors.grey[300])),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                      decoration: InputDecoration(
                        label: Row(
                          children: [
                            Icon(Icons.key),
                            Text("pw 입력 "),
                          ],
                        ),
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    LoginPageBtn(color: Colors.blueAccent, onpress: (){}, txt: "로그인하기"),
                    LoginPageBtn(color: Colors.grey, onpress: (){}, txt: "회원가입하기")
                  ],
                ),
                SizedBox(
                  height: 40,

                ),
                Container(
                  color: Colors.grey[200],
                  width: double.infinity,
                  height: 2,
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PlatformLoginBtn2(bg_color: Colors.yellowAccent, img2: 'image/klogo.png', txt2: '카카오 로그인 하기', txt_color2: Colors.black, onpress2: (){}),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PlatformLoginBtn2(bg_color: Colors.grey[200], img2: 'image/glogo.png', txt2: '구글 로그인 하기', txt_color2: Colors.black, onpress2: (){}),



                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}