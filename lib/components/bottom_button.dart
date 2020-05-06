import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  final String buttonText;
  final Function onButtonTapped;

  BottomButton({@required this.buttonText, @required this.onButtonTapped});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onButtonTapped,
      child: Container(
        color: kBottomContainerBackgroundColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            this.buttonText,
            textAlign: TextAlign.center,
            style: kLargeButtonTextStyle,
          ),
        ),
        padding: EdgeInsets.only(bottom: 20.0),
      ),
    );
  }
}
