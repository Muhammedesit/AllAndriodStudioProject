import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'dart:math';
import 'package:flutter/widgets.dart';


void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF112997),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}


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


class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeHorizontal;
  static double blockSizeVertical;

  static double _safeAreaHorizontal;
  static double _safeAreaVertical;
  static double safeBlockHorizontal;
  static double safeBlockVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;

    _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
    safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;

    print('safeBlockHorizontal ' + safeBlockHorizontal.toString());
    print('safeBlockVertical ' + safeBlockHorizontal.toString());
  }
}
const kBottomContainerColour = Color(0xFFEB1515);
const kActiveCardColour = Color(0xFF1D227F);
const kInActiveCardColour = Color(0xFF0F122A);
const kAlphaBottomContainerColour = Color(0x6AD92C59);
const kLabelStyleColour = Color(0xFFBABCCB);
const kRoundedIconButtonColour = Color(0xFF6A729A);
const kSliderMinValue = 100.0;
const kSliderMaxValue = 250.0;

class Utilities {
  static double bottomContainerHeight = SizeConfig.safeBlockHorizontal * 15;

  static TextStyle largeButtonTextStyle = TextStyle(
    //fontSize: 25.0,
    fontSize: SizeConfig.safeBlockHorizontal * 10,
    fontWeight: FontWeight.bold,
  );

  static TextStyle labelTextStyle = TextStyle(
    fontSize: SizeConfig.safeBlockHorizontal * 5,
    color: kLabelStyleColour,
  );

  static TextStyle numberTextStyle = TextStyle(
    fontSize: SizeConfig.safeBlockHorizontal * 10,
    fontWeight: FontWeight.w900,
  );

  static TextStyle titleTextStyle = TextStyle(
    fontSize: SizeConfig.safeBlockHorizontal * 12,
    fontWeight: FontWeight.bold,
  );

  static TextStyle resultTextStyle = TextStyle(
    fontSize: SizeConfig.safeBlockHorizontal * 8,
    fontWeight: FontWeight.bold,
    color: Color(0xFF30C674),
  );

  static TextStyle bmiTextStyle = TextStyle(
    fontSize: SizeConfig.safeBlockHorizontal * 30,
    fontWeight: FontWeight.bold,
  );

  static TextStyle bodyTextStyle = TextStyle(
    fontSize: SizeConfig.safeBlockHorizontal * 6,
    fontWeight: FontWeight.bold,
  );

  static TextStyle appBarTitle = TextStyle(
    fontSize: SizeConfig.safeBlockHorizontal * 4,
    fontWeight: FontWeight.bold,
  );
}
