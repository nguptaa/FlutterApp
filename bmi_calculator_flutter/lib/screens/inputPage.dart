import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/components/bottomBtn.dart';
import 'package:bmi_calculator/components/reuseableCard.dart';
import 'package:bmi_calculator/components/iconContent.dart';
import 'package:bmi_calculator/components/roundIconBtn.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/calcBrain.dart';
import 'resultPage.dart';

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
          BottomBtn(
            buttonTitle: 'CALCULATE',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

