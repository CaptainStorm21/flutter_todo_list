import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        title: const Text('Rows and Columns'),
      ),
      body: MyWidget(),
      )
    )
  );
}


class MyWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Center(child:Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
        width:100, 
        height: 100, 
        color:Colors.red[200]),
        Container(
        width:100, 
        height: 100, 
        color:Colors.green[200]),
        Container(
        width:100, 
        height: 100, 
        color:Colors.yellow[200]),
        ]
    ));
  }
}

