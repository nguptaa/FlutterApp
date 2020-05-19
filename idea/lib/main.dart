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
                CircleAvatar(
                  radius: 80.0,
                  backgroundImage: AssetImage('images/avatar.png'),
                ),
                SizedBox(height: 1),
                Text(
                  'Nikhil Gupta',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Pacifico',
                      color: Colors.white),
                ),
                RaisedButton(
                  onPressed: () {},
                  child: const Text('nguptaa183@gmail.com',
                      style: TextStyle(
                        fontSize: 20,
                      )),
                ),
                SizedBox(height: 10),
                RaisedButton(
                  onPressed: () {},
                  child: const Text('+919901408565',
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
