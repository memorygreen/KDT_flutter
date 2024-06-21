import 'package:ex10code_refactoring/controller/simple_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SimpleButton extends StatelessWidget {

  SimpleController controller = Get.put(SimpleController()); //자 : 의존성 주입

  @override
  Widget build(BuildContext context) {
    print(' build method on');
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text('simple getx controller', style: TextStyle(fontSize: 32),),
              SizedBox(height: 30,),

              // 상태 변화가 일어날 공간

              // GetBuilder 에러가 나진 않지만 <> 안에 사용할 controller 입력
              GetBuilder<SimpleController>(
                builder: (context) {
                  print('get builder in text');
                  return Text('${controller.num1}', style:  TextStyle(fontSize: 24),);
                }
              ),


              ElevatedButton(onPressed: (){
                  controller.increaseNum1();
              }, child: Text('증가')),

            ],
          ),
        ),
      ),
    );
  }
}