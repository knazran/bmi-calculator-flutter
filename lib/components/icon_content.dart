import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class IconContent extends StatelessWidget {
  final IconData displayIcon;
  final String displayText;

  IconContent({this.displayIcon, this.displayText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(displayIcon, size: 80.0),
        SizedBox(height: 15.0),
        Text(
          displayText,
          style: displayTextStyle,
        )
      ],
    );
  }
}