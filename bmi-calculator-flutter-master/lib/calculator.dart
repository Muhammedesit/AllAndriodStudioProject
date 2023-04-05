import 'dart:math';

import 'package:flutter/material.dart';

class CalculatorBrain {
  CalculatorBrain({@required this.weight, @required this.height}) {
    calculateBMI();
  }

  final int height;
  final int weight;
  String _BMI;
  String _result;
  String _interpretation;

  void calculateBMI() {
    double bmi = weight / pow(height / 100, 2);
    _BMI = bmi.toStringAsFixed(1);

    if (bmi >= 25) {
      _result = 'Overweight';
      _interpretation =
          'You have a higher than normal body weight. Try to exercise more.';
    } else if (bmi >= 18.5) {
      _result = 'Normal';
      _interpretation = 'You have a normal body weight. Good job!';
    } else {
      _result = 'Underweight';
      _interpretation =
          'Your a lower than normal body weight. You can eat a bit more.';
    }
  }

  String getBMI() => _BMI;

  String getResult() => _result;

  String getInterpretation() => _interpretation;
}
