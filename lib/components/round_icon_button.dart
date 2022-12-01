import 'package:flutter/material.dart';
import '../constants.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.ICON, this.onPress, this.onLongPress});
  final IconData? ICON;
  final onPress;
  final onLongPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      onLongPress: onLongPress,
      shape: CircleBorder(),
      elevation: 6.0,
      disabledElevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      fillColor: Color(0xFF4C4F5E),
      child: Icon(
        ICON,
        color: Colors.white,
      ),
    );
  }
}
