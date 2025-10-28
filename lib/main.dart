import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // hides debug banner on top
      home: Scaffold( // adds a white space in it, so we can build the application
        backgroundColor: Colors.blue[100], // can be writed without [] to get the full color
        appBar: AppBar(
          title: Text("Test app"),
          backgroundColor: Colors.blue,
          elevation: 0,
          leading: Icon(Icons.menu),// left icon
          actions: [ // right icon
            IconButton(onPressed: () {}, icon: Icon(Icons.logout)) // icon with actions
          ],
        ),
        body: Center(
          child: GestureDetector( // detects a event
            onTap: () {
              print("object");
            },
            child: Container(width: 300,height: 300,color: Colors.blue, child: Text("asdasda"),),
          ),
        ),
        /*
        */
      ),
    );
  }
}
