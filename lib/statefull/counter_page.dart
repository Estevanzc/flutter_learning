import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  //variable
  int _counter = 0;


  void _incrementCounter() {
    setState(() {
      _counter ++;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You pushed the button many times"),
            Text(_counter.toString()),
            ElevatedButton(onPressed: _incrementCounter, child: Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}