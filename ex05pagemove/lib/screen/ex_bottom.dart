import 'package:ex05pagemove/screen/ex_blue_page.dart';
import 'package:ex05pagemove/screen/ex_green_page.dart';
import 'package:ex05pagemove/screen/ex_red_page.dart';
import 'package:flutter/material.dart';
// 240423 화

class ExBottom extends StatefulWidget {
  const ExBottom({super.key});

  @override
  State<ExBottom> createState() => _ExBottomState();
}

class _ExBottomState extends State<ExBottom> {
  int select_index = 0;
  List<Widget> list_widget = [ExBluePage(), ExRedPage(), ExGreenPage()];

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        title: const Text('bottom navigation 예제'),
      ),
      body: list_widget[select_index],
      // Center(
      //   child: Text('첫 번째 페이지 입니다.'),
      // ),
      bottomNavigationBar:
      BottomNavigationBar(
        items: [
          // 주의사항 - items은 하나는 못 씀(어러개)
          // 주의사항2 - label은 필수요소가 아니지만 반드시 써주어야 합니다.
          BottomNavigationBarItem(icon: Icon(Icons.account_circle),
          label: '계정'),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline),
          label: '채팅'),
          BottomNavigationBarItem(icon: Icon(Icons.search),
              label: '채팅')],

        // 현재 선택된 index
        currentIndex: select_index,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.red,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,

        onTap: (i){
          setState(() {
            select_index= i;
          });

        },
      ),
    );
  }
}
