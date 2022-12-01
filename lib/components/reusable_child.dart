import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';

class ReusableChild extends StatelessWidget {
  final containerIcon;
  final String txt;
  ReusableChild({this.containerIcon = FontAwesomeIcons.amazon, this.txt = ''});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          containerIcon,
          color: Color(0xFFffffff),
          size: 80.0,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          txt,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
