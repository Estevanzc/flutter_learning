import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {

  TextEditingController myController = TextEditingController();
  String greetingMessage = "";

  void greetUser() {
    if (myController.text.isNotEmpty) {
      setState(() {
        greetingMessage = myController.text;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Text(greetingMessage),
              TextField(
                controller: myController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Your name2",
                ),
              ),
              ElevatedButton(onPressed: greetUser, child: Text("Press me"))
            ],
          ),
        ),
      ),
    );
  }
}