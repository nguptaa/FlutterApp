import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.grey[800],
          appBar: AppBar(
            title: Text('Magic 8 Ball'),
            backgroundColor: Colors.red,
          ),
          body: magicApp(),
        ),
      ),
    );


class magicApp extends StatefulWidget {

  @override
  _magicAppState createState() => _magicAppState();
}

class _magicAppState extends State<magicApp> {
  int ballnumber=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
              onPressed: () { setState(() {
                ballnumber = Random().nextInt(5)+1;
              }); },
              child: Expanded(
           child: Image.asset('images/ball$ballnumber.png'),
        ),
      ),
    );
  }
}