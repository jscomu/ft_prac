import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ft_blog/pages/app.dart';

class Beta extends StatelessWidget {
  const Beta({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Beta 화면"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("홈으로 이동"),
          onPressed: () {
            Get.offAll(App());
          },
        ),
      ),
    );
  }
}