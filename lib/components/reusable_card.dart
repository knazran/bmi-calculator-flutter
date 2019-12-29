import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colorProp;
  final Widget cardChild;
  final Function onPressed;

  ReusableCard({@required this.colorProp, this.cardChild, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colorProp,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
