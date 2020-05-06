import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi;

  CalculatorBrain({@required this.height, @required this.weight});

  //Formular for calculating the BMI according to wikipedia is
  //mass in kg / height * height in m (i.e kg/m2)

  String calculateBMI() {
    //Convert height in cm to metre
    double mHeight = height / 100;

    _bmi = weight / (pow(mHeight, 2));

    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return ("Overweight");
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return ("You have a higher than normal body weight, try to exercise more.");
    } else if (_bmi > 18.5) {
      return "You have a normal body weight, Good Job!";
    } else {
      return "You have a lower than normal body weight, you can eat a bit more.";
    }
  }
}
