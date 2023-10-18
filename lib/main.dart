import 'package:flutter/material.dart';

void main() => runApp(MyDialog());

class MyDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Dialog demo', home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // initial var - string
  String _inputText = '';
  // void show input dialog -- alertbox
  void _showInputDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          TextEditingController controller = TextEditingController();
          return AlertDialog(
            title: Text("Enter some text"),
            content: TextField(
              controller: controller,
              decoration: InputDecoration(hintText: 'Enter some text'),
            ),
            actions: <Widget>[
              TextButton(
                child: Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                child: Text('Save'),
                onPressed: () {
                  setState(() {
                    _inputText = controller.text;
                  });
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }

// Return Scaffold
// appBr body update State text - Icon
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My New App')),
      body: Center(
        child: Text(
            // result = textCondition ? truevalue : falsevalue
            _inputText.isEmpty ? 'Tap the Icon' : '$_inputText'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showInputDialog,
        child: Icon(Icons.edit),
      ),
    );
  }
}

// _input text empty or not  == '' .isEmpty
// if .isEmpty is true the "tap the icon to enter text"
//ellse "you entered $_inputtext"
// result = textCondition ? truevalue : falsevalue
