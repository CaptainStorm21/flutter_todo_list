import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(home: Scaffold(body: Center(child: Counter()))));

class Counter extends StatefulWidget {
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  
  //Row
  //Button Counter: 4



  //initial value _counter var
  int _counter = 0;
  void _increment() {
    setState(() {
      //update counter
      _counter++;
    });
  }

  //widgets build() button on pressed: _increment
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: _increment,
          child: Text('Push Me!')
        ), 
        Text('You Pressed $_counter times')],
        );
  }

  // increment Function _counter++ setState()
}
