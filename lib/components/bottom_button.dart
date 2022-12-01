import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTAP, this.txt = ''});
  final VoidCallback? onTAP;
  final String txt;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTAP,
      child: Container(
        color: kBottomContainerColor,
        width: double.infinity,
        height: kBottomContainerHeight,
        margin: EdgeInsets.only(top: 10.0),
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Text(
            txt,
            textAlign: TextAlign.center,
            style: kBottomContainerTextStyle,
          ),
        ),
      ),
    );
  }
}
