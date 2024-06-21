import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Ex11Cu(),
    );
  }
}

//240417 자영풀이
// 11-2
class Ex11_2_jy extends StatelessWidget {
  const Ex11_2_jy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title:
            Text('더보기', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24)
              ,),
          //leading: Icon(CupertinoIcons.back),
        actions: [Icon(Icons.settings)],
      ),
      body: SafeArea(
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(8),
              padding:EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.grey[200],

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('홍길동님', style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,)
                  ),

                  Row(

                    children: [
                      Text('Friend', style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple
                      )),
                      SizedBox(width: 5,), //자영 추가함
                      Text('155p', style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,),)

                    ],
                  ),

                ],
              ),
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                SizedBox(width: 24,),//자영추가
                Text('서비스',
                  style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,),
                ),
              ],
            ),

            SizedBox(height: 30,),
            Container(
              child: Row(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 30,),//자영추가
                      Column(
                        children: [

                          
                          Stack(
                            children: [
                              Icon(Icons.copyright,
                              size: 50, ),
                              Positioned(
                          
                                bottom: 3,
                                right: 3,
                                child: Container(
                                  child: Center(

                                    child: Text('N ',
                                      textAlign: TextAlign.center,

                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.white),
                                    ),
                                  ),
                                  width: 15,
                                  height: 15,
                                  decoration: BoxDecoration(
                                    color: Colors.pinkAccent,
                                    borderRadius: BorderRadius.circular(3),
                                ),
                          
                                ),
                              )
                                      ]
                          ),
                          Text('포인트 충전소', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                        ],
                      ),
                      SizedBox(width: 30,),//자영추가
                      Column(
                        children: [


                          Stack(
                              children: [
                                Icon(Icons.chat,
                                  size: 50, ),
                                Positioned(

                                  bottom: 3,
                                  right: 3,
                                  child: Container(

                                    child: Text('N',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                              color: Colors.white),

                                    ),
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      color: Colors.pinkAccent,
                                      borderRadius: BorderRadius.circular(3),
                                    ),

                                  ),
                                )
                              ]
                          ),
                          Text('상담하기', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                        ],
                      ),




                    ],
                  )
                ],
              ),
            )
          ],

        ),




      )



    );
  }
}


//240416~17 쌤풀이
// 11
class Ex11Cu extends StatelessWidget {
  const Ex11Cu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('더보기'),
        actions: [
          Icon(Icons.chat_bubble_outline),
          SizedBox(width: 20,),
          Icon(Icons.settings,),
          SizedBox(width: 20,)
        ],
        leading: Icon(Icons.menu),
      ),
      body : Column(
        children: [
          Container(
            width: double.infinity,
            height: 80,
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(10)
            ),
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('박*호님', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                Row(
                  children: [
                    Text('Friend', style:
                      TextStyle(fontSize: 16,
                        // 색상코드
                        // Color(0xff xxxxxx)
                        color: Color(0xff751485),
                        fontWeight: FontWeight.bold)),
                    SizedBox(width: 3,),

                    Text('155p', style:
                    TextStyle(fontSize: 16,
                        fontWeight: FontWeight.bold))
                  ],
                ),

              ],
            ),
          ),

          SizedBox(height: 30,),
          
          Container(
            margin: EdgeInsets.all(16),
            alignment: Alignment.topLeft,
            child: Text('서비스', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
          ),
          
          Container(
            child: Row(
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        Icon(Icons.copyright, size: 50,),
                        Positioned(
                          right: 3,
                          bottom: 3,

                          child: Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                              color: Colors.pinkAccent,
                              borderRadius: BorderRadius.circular(3)
                            ),
                            child: Text("N", style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                          ),
                        )
                      ],
                    ),
                    Text('포인트 충전소')
                    
                  ],
                )
                
              ],
            ),
          )



        ],
      )
    );
  }
}



class Ex10StackIcon extends StatelessWidget {
  const Ex10StackIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : SafeArea(
        child: Stack(
          children: [
            Icon(Icons.favorite_border_sharp,size: 100,),
            Positioned(
              top: 5,
              right: 10,
              child: Container(
                child: Text('1',
                  textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
                ),
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red
                ),
              ),
            )
            
          ],
        ),
      )
    );
  }
}



// 07-2 (실습 혼자) 자영푸는 중
class Ex07_2_jy extends StatelessWidget {
  const Ex07_2_jy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(

              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                              child: Text("1", style:
                              TextStyle(fontSize: 32),
                                textAlign: TextAlign.center,
                              ),
                      
                          ),
                          Expanded(
                              child: Text("2", style: TextStyle(fontSize: 32,),
                                  textAlign: TextAlign.center)
                          ),
                          Expanded(child: Text("3",
                            style: TextStyle(fontSize: 32),
                              textAlign: TextAlign.center)
                          ),
                      
                        ],
                      ),
                    ),


                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Text("4", style:
                            TextStyle(fontSize: 32),
                              textAlign: TextAlign.center,
                            ),
                      
                          ),
                          Expanded(
                              child: Text("5", style: TextStyle(fontSize: 32),
                                  textAlign: TextAlign.center)
                          ),
                          Expanded(child: Text("6",
                              style: TextStyle(fontSize: 32),
                              textAlign: TextAlign.center)
                          ),
                      
                        ],
                      ),
                    ),

                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Text("7", style:
                            TextStyle(fontSize: 32),
                              textAlign: TextAlign.center,
                            ),
                      
                          ),
                          Expanded(
                              child: Text("8", style: TextStyle(fontSize: 32),
                                  textAlign: TextAlign.center)
                          ),
                          Expanded(child: Text("9",
                              style: TextStyle(fontSize: 32),
                              textAlign: TextAlign.center)
                          ),
                      
                        ],
                      ),
                    ),

                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Text("*", style:
                            TextStyle(fontSize: 32),
                              textAlign: TextAlign.center,
                            ),
                      
                          ),
                          Expanded(
                              child: Text("0", style: TextStyle(fontSize: 32),
                                  textAlign: TextAlign.center)
                          ),
                          Expanded(child: Text("#",
                              style: TextStyle(fontSize: 32),
                              textAlign: TextAlign.center)
                          ),
                      
                        ],
                      ),
                    ),


                  ],
                ),
                  
                  margin: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadiusDirectional.circular(10)
                    
                )
                
                ),
            ),



          ],
        ),
        
      ),
      
    );
  }
}







//09
class Ex09Stack extends StatelessWidget {
  const Ex09Stack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          // alignment: Alignment.center,
          // 위젯을 쌓게 도와주는 위젯
          // 겹치는 순서는 코드가 아래로 갈수록 가장 위에 화면상 있습니다!
          children: [

            // Positioned 위젯
            // stack 위젯의 하위 위젯들의 위젯 배치를 도와주는 위젯

            Positioned(
              top : 10,
              child: Container(
                width: 150,
                height: 150,
                color: Colors.red,
              ),
            ),Positioned(
              top: 20,
              right : 10,
              child: Container(
                width: 120,
                height: 120,
                color: Colors.orange,
              ),
            ),Positioned(
              top : 10,
              child: Container(
                width: 80,
                height: 80,
                color: Colors.yellow,
              ),
            ),Positioned(
              left : 10,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.green,
              ),
            ),
        
        
          ],
        
        
        ),
      ),
    );
  }
}



// 08
class Ex08Row extends StatelessWidget {
  // row / column - 가로 / 세로를 관장하고 있는 위젯
  // 가로 / 세로의 크기를 벗어나는 위젯이 올 경우 해결
  // 1. flexible/expanded 사용하여 디바이스의 가로만큼만 동적으로 출력
  // 2. 스크롤
  const Ex08Row({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child:
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.green,
            child: Row(
              // start - 시작라인 (왼쪽) - default
              // end - 끝라인(오른쪽)
              // center - 가운데
              // spaceBetween - 양끝에 위젯을 배치 한 후 일정 간격
              // spaceEvenly - 공백 포함 위젯들 간 간격이 모두 동일
              // spaceAround - 양팔벌려 나란히

              mainAxisAlignment: MainAxisAlignment.spaceAround,

              // crossAxisAlignment
              // center - 반대가 되는 축의 가운데 정렬
              // start
              // end

              crossAxisAlignment: CrossAxisAlignment.end,




              children: [
                Container(
                  width: 20,
                  height: 20,
                  color: Colors.red,

                ),
                Container(
                  width: 20,
                  height: 20,
                  color: Colors.blue,

                ),
                Container(
                  width: 20,
                  height: 20,
                  color: Colors.yellow,

                )
              ],
            ),
          ),
        ),
    );
  }
}







// 07
// 자영풀이
class Ex07domino_jy extends StatelessWidget {
  const Ex07domino_jy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Flexible(
          fit: FlexFit.loose,
          child: Container(
            
              height: 90,
              width: double.infinity,
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10)),
            
              child: Row(
                children: [

                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                                flex: 1,
                                child: Text('아이유와 도미노를 더 맛있게',
                                    style: TextStyle(fontSize: 16),

                                )
                            ),
                            Flexible(
                                flex: 1,
                                child: Text('도미노 매니아되고 ~40% 할인받자!',
                                    style: TextStyle(fontSize: 13)
                                )
                            ),
                          ],
                        ),
                      ),


                  Expanded(
                      flex: 1,
                        child: Image.asset('image/domino.png')),
                ],
              ),
              
          
          ),
        ),
      ),
    );
  }
}


// 쌤풀이
class Ex07domino extends StatelessWidget {
  const Ex07domino({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 90,
          width: double.infinity,
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10)
          ),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("아이유와 도미노를 더 맛있게",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    Text(" 도미노 매니아되고 ~40% 할인받자!",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    )
                  ],
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Image.asset('image/domino.png'),
              ),
            ],
          ),
            

        ),
      ),
    );
  }
}




// 240416 화 // Flexible & Expanded(==Flexible tight)
class Ex06Flexible extends StatelessWidget {
  const Ex06Flexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('Flexible, Expanded 미사용'),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  width: 300,
                  height: 50,
                  color: Colors.red,
                ),
                Container(
                  width: 300,
                  height: 50,
                  color: Colors.orange,
                )
              ],
            ),
            Text('Flexible 사용'),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Flexible(
                  child: Container(
                    width: 100,
                    height: 50,
                    color: Colors.red,
                  ),
                ),
                Flexible(
                  child: Container(
                    width: 100,
                    height: 50,
                    color: Colors.orange,
                  ),
                )
              ],
            ),
            Text('Flexible fit tight 사용'),
            SizedBox(
              height: 20,
            ),
            Row(
              //loose, tight의 차이

              // loose : 느슨한 -> 해당 위젯들이 공백이 생기는 경우 공백 노출
              // tight : 꽉 낀 -> 해당 위젯이 크기와 상관없이 가로/세로를 가득 채움
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    width: 100,
                    height: 50,
                    color: Colors.red,
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    width: 100,
                    height: 50,
                    color: Colors.orange,
                  ),
                )
              ],
            ),
            Text('Flexible flex 사용'),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Flexible(
                  flex: 2,
                  child: Container(
                    width: 300,
                    height: 50,
                    color: Colors.red,
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: Container(
                    width: 300,
                    height: 50,
                    color: Colors.orange,
                  ),
                ),
                Flexible(
                    child: Container(
                      width: 300,
                      height: 50,
                      color: Colors.yellow,
                    )

                )
              ],
            ),
            Text('Expanded 사용'),
            SizedBox(height: 20,),
            Row(
              children: [
                //expanded == flexible fit tight
                Expanded(
                  child: Container(
                    width: 100,
                    height: 50,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 100,
                    height: 50,
                    color: Colors.orange,
                  ),
                )
              ],

            )

          ],
        ),
      ),
    );
  }
}








//240415 월
class Ex05Kakao extends StatelessWidget {
  const Ex05Kakao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        margin: EdgeInsets.all(16),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'image/klogo.png',
              width: 30,
              height: 30,
            ),
            SizedBox(
              width: 20,
            ),
            Text('카카오톡으로 로그인하기')
          ],
        ),
        height: 50,
        decoration: BoxDecoration(
            color: Colors.yellowAccent,
            borderRadius: BorderRadius.circular(10)),
      ),
    ));
  }
}

class Ex05Kakao_jy extends StatelessWidget {
  const Ex05Kakao_jy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Container(
                // margin: EdgeInsets.all(16),
                // decoration: BoxDecoration(
                //     color: Colors.yellowAccent,
                //     borderRadius: BorderRadius.circular(10)
                // ),
                //
                // SizedBox(width: 20),
                // Text('카카오톡으로 로그인하기'),
                ),
            //Image.asset('image/klogo.png', width: 30, height: 30,),
          ],
        ),
      ),
    );
  }
}

class Ex04SizedBox extends StatelessWidget {
  const Ex04SizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. container : 자식 위젯의 크기를 결정
    //                꾸미기 ( color, border ...)

    // 2. SizedBox : 자식위젯의 크기를 결정
    //               width, height (자: 만 사용 가능)
    //               Row, column의 위젯들 간 사이 공간을 만들기 위해

    return Scaffold(
        body: SafeArea(
      child: Row(
        children: [
          Text('hello'),
          SizedBox(
            width: 120,
            height: 120,
            //child: Text('hello world'),
          ),
          Text('World')
        ],
      ),
    ));
  }
}

class Ex03width extends StatelessWidget {
  const Ex03width({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 100,
          // 가로(세로)가 꽉 차게 하는 코드 (자:2가지 존재 中 오늘은 1가지만)
          // double.infinity

          width: double.infinity,
          color: Colors.grey,
        ),
      ),
    );
  }
}

class Ex02MakeIcon extends StatelessWidget {
  const Ex02MakeIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 32, left: 32),
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                  color: Colors.green[500],
                  borderRadius: BorderRadius.circular(40)),
              child: Icon(
                Icons.call,
                size: 80,
                color: Colors.white,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 32, left: 32),
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                  color: Colors.red[500],
                  borderRadius: BorderRadius.circular(40)),
              child: Icon(
                Icons.camera_alt_outlined,
                size: 80,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Ex02MakeIcon_jy extends StatelessWidget {
  const Ex02MakeIcon_jy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Row(
        children: [
          Container(
            width: 120,
            height: 120,
            margin: EdgeInsets.only(top: 32, left: 32, right: 0, bottom: 0),
            decoration: BoxDecoration(
                color: Colors.green[500],
                borderRadius: BorderRadius.circular(40)),
            child: Icon(
              Icons.call,
              size: 80,
              color: Colors.white,
            ),
          ),
          Container(
            width: 120,
            height: 120,
            margin: EdgeInsets.only(top: 32, left: 32, right: 0, bottom: 0),
            decoration: BoxDecoration(
                color: Colors.red[500],
                borderRadius: BorderRadius.circular(40)),
            child: Icon(
              Icons.camera_alt_outlined,
              size: 80,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ));
  }
}

class Ex01Container extends StatelessWidget {
  const Ex01Container({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // 숫자의 단위는 lp

          width: 200,
          height: 200,

          //마진1. fromLTRB(left, top, right, bottom)
          //margin: EdgeInsets.fromLTRB(16,16,16,16),

          //마진2. all(double)
          //margin: EdgeInsets.all(24.0),

          //마진3. only() - {named method}
          // 메소드 매개변수가 순서와 상관없이 이름으로 값을 대입
          margin: EdgeInsets.only(top: 20, left: 10),

          // 패딩 - 마진과 동일
          //padding: EdgeInsets.only(right: 20, left:30, top:30, bottom: 30),

          alignment: Alignment.center,
          //color: Colors.blueAccent,
          // color와 decoration은 같이 있을 수 없다.
          // decoration:
          decoration: BoxDecoration(
              color: Colors.pink,
              border: Border.all(
                  color: Colors.black, width: 8, style: BorderStyle.solid),
              // 지정한 만큼 radius 주기
              //borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),

              // 모든 면에 radius 주기
              // borderRadius: BorderRadius.all(Radius.circular(50)),
              borderRadius: BorderRadius.circular(50)),

          child: Text(
            'hello world',
            style: TextStyle(fontSize: 32),
            //textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
