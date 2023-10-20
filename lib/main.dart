import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors


void main() => runApp(MyListView());

class MyListView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final items = [
      'item1',
      'item2',
      'item3',
      'item5'
    ];

    return MaterialApp(
      title: 'Example',
      home: Scaffold(
        appBar: AppBar(title: Text('App bar title')),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder:(context, index) {
            final item = items[index];
            return ListTile(
              title: Text(item),
              subtitle: Text('subtitle'),
              onTap: (){
                print('You just clicked on $item');
              }
            );
          }
        )
      )
    );
  }
}
