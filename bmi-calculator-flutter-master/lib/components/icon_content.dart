import 'package:bmi_calculator/size.dart';
import 'package:flutter/material.dart';
import '../style.dart';

class IconContent extends StatelessWidget {
  IconContent({
    @required this.iconData,
    @required this.label,
  });

  final IconData iconData;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Icon(
          iconData,
          //size: 80.0,
          size: SizeConfig.safeBlockHorizontal * 20,
        ),
//        SizedBox(
//          height: 15.0,
//        ),
        Text(
          label,
          style: Utilities.labelTextStyle,
        ),
      ],
    );
  }
}
