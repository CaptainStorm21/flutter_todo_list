import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

void main() => runApp(MaterialApp(home: MyAddToDoApp()));

class MyAddToDoApp extends StatefulWidget {
  @override
  _MyAddToDoAppState createState() => _MyAddToDoAppState();
}

class _MyAddToDoAppState extends State<MyAddToDoApp> {
  // initial variable
  List<String> _todos = [
    'Visit Rome',
    'Drive to Paris',
    'Eat at daVinci',
    'Visit Vatican'
  ];

  // dialog box popup
  // taxt input --> add to the list _todos
  void _addTodo() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String newTodo = '';
        return AlertDialog(
            title: Text('Enter a new task below'),
            content: TextField(onChanged: (value) {
              newTodo = value;
            }),
            actions: <Widget>[
              TextButton(
                  child: Text('Cancel'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
              TextButton(
                  child: Text('Save'),
                  onPressed: () {
                    setState(() {
                      _todos.add(newTodo);
                    });
                    Navigator.of(context).pop();
                  }),
            ]);
      },
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('To do List')),
      body: ListView.builder(
        itemCount: _todos.length,
        itemBuilder: (context, index){
          final todo = _todos[index];
          return ListTile(
            title: Text(todo),
            onTap:(){
              setState((){
                _todos.removeAt(index);
              },
            );
            });
        }),
        floatingActionButton: 
          FloatingActionButton(
            onPressed: _addTodo,
            child: Icon(Icons.add)
          ),
    );
  }
}
