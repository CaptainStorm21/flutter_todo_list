import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyHomePage()));

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //initial variable
  bool isButtonPressed = false;

  //setState()?if

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: GestureDetector(onTap: () {
      if (isButtonPressed) {
        setState(() {
          isButtonPressed = false;
        });
      } else {
        setState(() {
          isButtonPressed = true;
        });
      }
    },
    
    child: Container,
    
    
    
    
    ));
  }
}
