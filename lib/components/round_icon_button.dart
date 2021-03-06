import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData iconData;
  final Function onPressedHandler;

  RoundIconButton({@required this.iconData, @required this.onPressedHandler});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(iconData),
      onPressed: () {
        onPressedHandler();
      },
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      elevation: 6.0,
    );
  }
}