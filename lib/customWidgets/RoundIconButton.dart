import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const kFillColor = Color(0xFF4C4F5E);

const BoxConstraints _kSizeConstraints = BoxConstraints.tightFor(
  width: 56.0,
  height: 56.0,
);

class RoundedIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  RoundedIconButton({@required this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      elevation: 6.0,
      disabledElevation: 6.0,
      constraints: _kSizeConstraints,
      shape: CircleBorder(),
      fillColor: kFillColor,
      onPressed: onPressed,
    );
  }
}
