import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//stateless myapp
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

//statefull myhomepage
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //initial value var
  String _inputText = '';

  //widget --> setState() --> update Var -- Widget State
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('An App Bar')),
        body: Center(
          child: TextField(
            decoration: InputDecoration(hintText: "Enter some text"),
            onChanged: (value) {
              //onPressed === anytime you update the text the value will get passed in
              setState(() {
                _inputText = value;
              });
            },
          ),
        ),
        bottomSheet: Container(
          color: Colors.blueGrey[400],
          alignment: Alignment.center,
          height: 100,
          child: Text('You have entered $_inputText'),
        ));
  }
}
