import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuseableCard.dart';
import 'iconContent.dart';
import 'constants.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

Gender selectedGender;
int userHeight = 180;
int userWeight = 74;
int userAge = 25;

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? kactiveCardColor
                        : kinkactiveCardColor,
                    cardChild: IconContent(
                      faIcon: FontAwesomeIcons.mars,
                      cardText: "Male",
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kactiveCardColor
                        : kinkactiveCardColor,
                    cardChild: IconContent(
                      faIcon: FontAwesomeIcons.venus,
                      cardText: "Female",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Height",
                    style: ktextLabel,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        userHeight.toString(),
                        style: kbigTextLabel,
                      ),
                      Text(
                        'cm',
                        style: ktextLabel,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: kactiveCardColor,
                      thumbColor: Colors.red,
                      overlayColor: Color(0x29F44326),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 18),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                    ),
                    child: Slider(
                      value: userHeight.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          userHeight = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
              colour: kinkactiveCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(
                    colour: kinkactiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Weight",
                          style: ktextLabel,
                        ),
                        Text(
                          userWeight.toString(),
                          style: kbigTextLabel,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RawMaterialBtn(
                              iconaddsub: Icons.add,
                              onPress: () {
                                setState(() {
                                  userWeight++;
                                });
                              },
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            RawMaterialBtn(
                              iconaddsub: Icons.remove,
                              onPress: () {
                                setState(() {
                                  userWeight--;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colour: kinkactiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Age",
                          style: ktextLabel,
                        ),
                        Text(
                          userAge.toString(),
                          style: kbigTextLabel,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RawMaterialBtn(
                              iconaddsub: Icons.add,
                              onPress: () {
                                setState(() {
                                  userAge++;
                                });
                              },
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            RawMaterialBtn(
                              iconaddsub: Icons.remove,
                              onPress: () {
                                setState(() {
                                  userAge--;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kbottomAppBarColor,
            height: kbottomAppBarHeight,
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

class RawMaterialBtn extends StatelessWidget {
  RawMaterialBtn({@required this.iconaddsub, @required this.onPress});
  final IconData iconaddsub;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.red,
      elevation: 8.0,
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      onPressed: onPress,
      shape: CircleBorder(),
      child: Icon(
        iconaddsub,
        color: Colors.white,
      ),
    );
  }
}
