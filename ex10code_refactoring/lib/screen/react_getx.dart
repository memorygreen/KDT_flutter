
import 'package:ex10code_refactoring/controller/react_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RxButton extends StatelessWidget {
  const RxButton({super.key});


  @override
  Widget build(BuildContext context) {
    // ReactController controller =  Get.put(ReactController());
    // di 의존성 주입

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text('react getx controller', style: TextStyle(fontSize: 32),
              ),

              //find - controller의 의존성 주입이 필요 없어지는 함수
              //1. Getx-> builder find<컨트롤러 작성>().변수
              GetX(
                  init: ReactController(),
                  builder: (_)=>Text('${Get.find<ReactController>().num1}')),

              //2.obx
              // 자: GetX-> 빌더 안 쓰려고 만든거!
              Obx(() =>Text('${Get.find<ReactController>().num1}')),



        // 자:안돼서 주석처리함
              // GetBuilder<ReactController>(
              //   builder: (context) {
              //     return Text('${controller.num1}');
              //   }
              // ),

              ElevatedButton(onPressed: (){
                // controller.increaseNum1();
                Get.find<ReactController>().increaseNum1();


              }, child: Text('증가'))
            ],
          ),
        ),
      ),
    );
  }
}