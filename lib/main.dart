import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          title: Text("test"),
          backgroundColor: Colors.blue,
          elevation: 0,
          leading: Icon(Icons.menu),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.logout))
          ],
        ),
        body: ListView(
          children: [
            Container(
              height: 300,
              color: Colors.blue,
            ),
            Container(
              height: 300,
              color: Colors.blue[300],
            ),
            Container(
              height: 300,
              color: Colors.blue[200],
            ),
          ],
        ),
      ),
    );
  }
}
