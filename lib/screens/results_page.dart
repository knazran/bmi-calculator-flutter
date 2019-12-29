import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/bottom_action_button.dart';

class ResultsPage extends StatelessWidget {
  final String descriptionText =
      "You have higher than normal body weight. Control your diet and exercise more.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Results",
                style: kH1TitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colorProp: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "OVERWEIGHT",
                    style: kResultCardTitleStyle,
                  ),
                  Text(
                    "26.7",
                    style: kResultCardNumberStyle,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Text(
                      descriptionText,
                      style: kResultCardSubtitleStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomActionButton(
            onTapHandler: () {
              Navigator.pop(context);
            },
            buttonChild: Text("RE-CALCULATE", style: kLargeButtonTextStyle),
          )
        ],
      ),
    );
  }
}
