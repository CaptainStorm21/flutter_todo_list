import 'package:flutter/material.dart';

void main() => runApp(MyListView());

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('ListView')),
          body: ListView(children: [
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Person One'),
              subtitle: Text('Animals@yahoo.com'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () => print('hellow world'),
            ),
                        ListTile(
              leading: Icon(Icons.person),
              title: Text('Person One'),
              subtitle: Text('Animals@yahoo.com'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () => print('hellow world'),
            ),
                        ListTile(
              leading: Icon(Icons.person),
              title: Text('Person One'),
              subtitle: Text('Animals@yahoo.com'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () => print('hellow world'),
            ),
          ])),
    );
  }
}
