import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuseableCard.dart';
import 'iconContent.dart';

const bottomAppBarHeight = 90.0;
const activeCardColor = Color(0xFF303030);
const inActiveCardColor = Color(0xFF616161);
const bottomAppBarColor = Colors.red;
enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

Gender selectedGender;

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReuseableCard(
                      colour: selectedGender == Gender.male
                          ? activeCardColor
                          : inActiveCardColor,
                      cardChild: IconContent(
                        faIcon: FontAwesomeIcons.mars,
                        cardText: "Male",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReuseableCard(
                      colour: selectedGender == Gender.female
                          ? activeCardColor
                          : inActiveCardColor,
                      cardChild: IconContent(
                        faIcon: FontAwesomeIcons.venus,
                        cardText: "Female",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(
              colour: inActiveCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(
                    colour: inActiveCardColor,
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colour: inActiveCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomAppBarColor,
            height: bottomAppBarHeight,
            width: double.infinity,
            child: Center(
              child: Text(
                'CALCULATE',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
