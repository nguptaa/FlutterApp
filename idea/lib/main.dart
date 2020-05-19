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
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('images/diamond.png', height: 100, width: 100),

                SizedBox(height: 1),
                Text('Nikhil Gupta', style: TextStyle(fontSize:25),),
                RaisedButton(
                  onPressed: () {},
                  child: const Text('Enabled Button',
                      style: TextStyle(fontSize: 20)),
                ),
                SizedBox(height: 10),
                RaisedButton(
                  onPressed: () {},
                  child: const Text('Enabled Button',
                      style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
