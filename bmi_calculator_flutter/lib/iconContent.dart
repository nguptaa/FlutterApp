import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconContent extends StatelessWidget {

  IconContent({this.faIcon, this.cardText});
  final IconData faIcon;
  final String cardText; 
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FaIcon(
          faIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 18.0,
        ),
        Text(
          cardText,
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
      ],
    );
  }
}