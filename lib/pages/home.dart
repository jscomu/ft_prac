import 'package:flutter/material.dart';
import 'package:ft_blog/pages/alpha.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 200),
          ElevatedButton(
            onPressed: () {
              Get.to(Alpha());
            },
            child: Text('고고'),
          ),
        ],
      ),
    );
  }
}