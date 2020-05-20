import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded uimain({Color color, int number}) =>
    Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(number);
        },
      ),
    );
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[800],
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              uimain(color: Colors.red, number: 1),
              uimain(color: Colors.orange, number: 2),
              uimain(color: Colors.yellow, number: 3),
              uimain(color: Colors.green, number: 4),
              uimain(color: Colors.teal, number: 5),
              uimain(color: Colors.blue, number: 6),
              uimain(color: Colors.purple, number: 7),
            ],
          ),
        ),
      ),
    );
  }
}
