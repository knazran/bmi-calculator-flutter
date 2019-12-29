import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomActionButton extends StatelessWidget {
  final Widget buttonChild;
  final Function onTapHandler;

  BottomActionButton({this.buttonChild, this.onTapHandler});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onTapHandler();
      },
      child: Container(
        child: Center(
          child: buttonChild
        ),
        color: bottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: bottomContainerHeight,
      ),
    );
  }
}

