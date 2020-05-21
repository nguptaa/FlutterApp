import 'package:flutter/material.dart';

const bottomAppBarHeight = 90.0;
const activeCardColor = Color(0xFF424242);
const bottomAppBarColor = Colors.red;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(colour: activeCardColor),
                ),
                Expanded(
                  child: ReuseableCard(colour: activeCardColor),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(colour: activeCardColor),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(colour: activeCardColor),
                ),
                Expanded(
                  child: ReuseableCard(colour: activeCardColor),
                ),
              ],
            ),
          ),
          Container(
            color: bottomAppBarColor,
            height: bottomAppBarHeight,
            width:  double.infinity,
          )
        ],
      ),
    );
  }
}

class ReuseableCard extends StatelessWidget {
  ReuseableCard({@required this.colour});
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
