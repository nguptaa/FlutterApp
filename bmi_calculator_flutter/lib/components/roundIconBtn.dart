import 'package:flutter/material.dart';

class RawMaterialBtn extends StatelessWidget {
  RawMaterialBtn({@required this.iconaddsub, @required this.onPress});
  final IconData iconaddsub;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Color(0xFF4C4F5E),
      elevation: 8.0,
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      onPressed: onPress,
      shape: CircleBorder(),
      child: Icon(
        iconaddsub,
      ),
    );
  }
}