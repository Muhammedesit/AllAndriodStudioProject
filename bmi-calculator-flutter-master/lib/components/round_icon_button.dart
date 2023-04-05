import 'package:bmi_calculator/size.dart';
import 'package:bmi_calculator/style.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(
//        width: 56.0,
//        height: 56.0,
        width: SizeConfig.safeBlockHorizontal * 15,
        height: SizeConfig.safeBlockHorizontal * 15,
      ),
      shape: CircleBorder(),
      fillColor: kRoundedIconButtonColour,
    );
  }
}
