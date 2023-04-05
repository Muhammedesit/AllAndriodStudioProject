import 'package:bmi_calculator/size.dart';
import 'package:bmi_calculator/style.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.buttonTitle, @required this.onTap});

  final String buttonTitle;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, //Navigator.pushNamed(context, '/result');
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: Utilities.largeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColour,
        margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
//        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: Utilities.bottomContainerHeight,
      ),
    );
  }
}
