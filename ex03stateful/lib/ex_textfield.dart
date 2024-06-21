import 'package:flutter/material.dart';

// 240419s

class Ex07Login extends StatelessWidget {
  const Ex07Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        title: Center(
            child: Text('로그인화면',
            style: TextStyle(fontWeight: FontWeight.bold),)),
      ),
      
      // onpressed나 ontap 등 제스쳐 기능을 가지고 있지 않는 위젯들에게
      // 제스쳐 기능을 부여해주는 위젯
      // GestureDetector
      body: GestureDetector(
        onTap: (){FocusScope.of(context).unfocus();},
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Image.asset('image/littleryan.gif'),
                Padding(
                  padding: const EdgeInsets.all(16.0), //자틀림 : TextField를 Padding으로 감싸기
                  child: TextField(
          
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      label: Text("email 입력"),
                      hintText: "email@email.com",
                      hintStyle: TextStyle(color: Colors.grey[300])
                  ),),
                ),
          
                Padding(
                  padding: const EdgeInsets.all(16.0), //자틀림 : TextField를 Padding으로 감싸기
                  child: TextField(
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        label: Text("password 입력"),
                    ),),
                ),
          
                SizedBox(height: 200,),
                ElevatedButton(onPressed: (){}, child: Text('로그인하기'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Ex07Login_jy extends StatelessWidget {


  const Ex07Login_jy({super.key});

  @override
  Widget build(BuildContext context) {
    String str_jy = 'hello';

    TextEditingController con_email_jy = TextEditingController(); //자; 객체 생성시 new 생략 가능
    TextEditingController con_pw_jy = TextEditingController(); //자; 객체 생성시 new 생략 가능

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        title: Center(
            child: Text(
              '로그인 화면', style: TextStyle(
                fontWeight: FontWeight.bold),)),
      ),
      body: SafeArea(
        child: Column(

          children: [
            Image.asset('image/littleryan.gif'),
            TextField(
                controller: con_email_jy,
                keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(

                label: Text('email 입력'),
                hintText:  "example@example.com",
                hintStyle: TextStyle(
                  color: Colors.grey[300]
                ),
              )
             ),
            TextField(
                controller: con_pw_jy,
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                  label: Text('비밀번호 입력'),
                )
            ),
            
            ElevatedButton(onPressed: (){}, child: Text('로그인하기'))


          ],
        ),




      ),
    );
  }
}

class Ex06Textfield extends StatefulWidget {
  const Ex06Textfield({super.key});

  @override
  State<Ex06Textfield> createState() => _Ex06TextfieldState();
}

class _Ex06TextfieldState extends State<Ex06Textfield> {

  // 변수
  String s = 'hello';


  @override
  Widget build(BuildContext context) {

    // 값이 바뀌는 것을 감지하는 클래스
    // textfield 의 값을 가지고 오기 위해 controller 객체 생성 이후
    // textfield의 controller 요소에 연결
    TextEditingController emailCon = TextEditingController(); //자; 객체 생성시 new 생략 가능

    // textfield 하나 당 하나의 컨트롤러
    TextEditingController pwCon = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              controller: emailCon,
              keyboardType: TextInputType.emailAddress, //주소
              decoration: InputDecoration(
                hintText: "example@example.com", hintStyle: TextStyle(color: Colors.grey[300], fontWeight: FontWeight.w200),
                label: Row(
                  children: [
                    Icon(Icons.account_circle),
                    Text('email'),
                  ],

                ),

              ),
            ),

            TextField(
              controller: pwCon,
              decoration: InputDecoration(
                label: Row(
                  children: [
                    Icon(Icons.key),
                    Text('password')
                  ],
                )
              ),
              obscureText: true, //비밀번호
            ),

            ElevatedButton(onPressed: (){
              // controller.text
              print(emailCon.text);
              setState(() {
                s = emailCon.text;
                print(s);
              });

            }, child: Text('로그인')
            ),
            SizedBox(height: 50,),
            Text('$s')

          ],
        ),
      ),
    );
  }
}
