import 'package:bmi_calculator/components/resuable_card.dart';
import 'package:flutter/material.dart';

import '../components/bottom_button.dart';
import '../constants.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultPage(this.bmiResult, this.resultText, this.interpretation);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI CALCULATOR",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(
                left: 10.0,
                top: 10.0,
              ),
              child: Text(
                "Your Result",
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                textBaseline: TextBaseline.alphabetic,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    this.resultText.toUpperCase(),
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xFFFF24D876),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    this.bmiResult.toUpperCase(),
                    style: kNumberTextStyle.copyWith(fontSize: 100.0),
                  ),
                  Text(
                    this.interpretation,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xFF8D8E98),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonText: "RE-CALCULATE",
            onButtonTapped: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
