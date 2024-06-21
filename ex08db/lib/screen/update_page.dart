import 'package:ex08db/model/memberModel.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';



final dio = Dio();
class MemberUpdatePage extends StatelessWidget {
  const MemberUpdatePage({super.key, required this.mm});
  final MemberModel mm;


  @override
  Widget build(BuildContext context) {
    TextEditingController input_id = TextEditingController(text: mm.id); // controller이용해서 값 고정
    TextEditingController input_pw = TextEditingController();
    TextEditingController input_age = TextEditingController();
    TextEditingController input_name = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('회원수정 페이지'),
      ),
      body: Column(
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
              readOnly: true,
              controller: input_id,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                label: Row(
                  children: [
                    Icon(Icons.key),
                    Text("비밀번호 입력 "),
                  ],
                ),

              ),
              keyboardType: TextInputType.text,
              obscureText: true,
              controller: input_pw,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  label: Text("나이 입력 "),
                  hintText: "20",
                  hintStyle: TextStyle(color: Colors.grey[300])),
              keyboardType: TextInputType.number,
              controller: input_age,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  label: Text("이름 입력 "),
                  hintText: "플러터",
                  hintStyle: TextStyle(color: Colors.grey[300])),
              keyboardType: TextInputType.text,
              controller: input_name,
            ),
          ),

          ElevatedButton(onPressed: (){

            updateMember(input_id.text, input_pw.text, input_age.text, context);

          }, child: Text('회원 수정'))
        ],
      ),
    );
  }

  void updateMember(id, pw, age, context) async{
    // 1. url
    String url = "http://211.48.213.193:8091/member/updateMember";

    // get 사용
    Response res = await dio.get(url, queryParameters: {'id':id, 'pw':pw, 'age':age});

    print(res.realUri);
    if(res.statusCode ==200){
      if(res.data == 'success');

      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('수정이 완료 되었습니다'))
      );
      Navigator.pop(context); // 자: 회원정보 수정 완료 시 이전 페이지로 이동


    }

  }
}