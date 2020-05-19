import 'package:flutter/material.dart';

// The main function is the starting point for all our Flutter apps.
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[300],
        body: SafeArea(
          child: Row(
            children: <Widget>[
              Container(
                color: Colors.blueGrey,
                height: 100,
                width: 100,
                child: Text('Container 1'),
              ),
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
                child: Text('Container 2'),
              ),
              Container(
                color: Colors.green,
                height: 100,
                width: 100,
                child: Text('Container 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
