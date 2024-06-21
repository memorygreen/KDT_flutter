import 'package:flutter/material.dart';

class ExLoginSuccessPage extends StatelessWidget {
  const ExLoginSuccessPage({super.key, required this.id});
  // 1. const 지워주기
  // ㄴ const 컴파일 할 때 상수로 만드는 것
  //      ㄴ 컴파일 : 작성 시
  // 2. 필드에 final
  // ㄴ 런타임할 때 상수로 만드 것
  //      ㄴ 런타임 : 실행 시

  // 2번 선택 이유 : const 재시작을 하지 않는 한 값이 바뀌지 않음
  //          ㄴ 컴퓨터 입장에서 메모리 관리가 수월(리소스 낭비 방지)
  final String id;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$id님 환영합니다'),
        backgroundColor: Colors.purpleAccent,
      ),

    );
  }
}