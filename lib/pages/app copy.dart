import 'package:flutter/material.dart';
import 'package:ft_blog/pages/alpha.dart';
import 'package:ft_blog/pages/beta.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("홈 화면"),
      ),
      body: ListView(
        children: [
          SizedBox(height: 200),
          ElevatedButton(
            onPressed: () {
              Get.to(Beta());
            },
            child: Text('고고'),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/penguins3.png'),
                backgroundColor: Colors.white,
              ),
              accountName: Text('DJDJ'),
              accountEmail: Text('DJ@DJ'),
              onDetailsPressed: () {
                print('arrow click');
              },
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0)
                )
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.grey[850],),
              title: Text('Home'),
              onTap: () {
                print('home click');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.grey[850],),
              title: Text('Setting'),
              onTap: () {
                print('setting click');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.question_answer, color: Colors.grey[850],),
              title: Text('Q&A'),
              onTap: () {
                print('Q&A click');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}