import 'package:flutter/material.dart';

class Alpha extends StatelessWidget {
  const Alpha({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: Text('테스트 APP'),
        centerTitle: true,
        backgroundColor: Colors.amber[700],
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('search button click');
            },
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to Page2'),
          onPressed: () {},
        ),
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