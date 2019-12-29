import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {
  final String description_text =
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
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                "Your Results",
                style: kH1TitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 9,
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
                      description_text,
                      style: kResultCardSubtitleStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'results');
                },
                child: Container(
                  child: Center(
                    child: Text(
                      "RE-CALCULATE",
                      style: kLargeButtonTextStyle,
                    ),
                  ),
                  color: bottomContainerColor,
                  // margin: EdgeInsets.only(top: 5.0),
                  padding: EdgeInsets.only(bottom: 20.0),
                  width: double.infinity,
                  height: bottomContainerHeight,
                ),
              ))
        ],
      ),
    );
  }
}
