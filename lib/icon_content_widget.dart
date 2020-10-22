import 'package:flutter/cupertino.dart';

const labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

class IconContentWidget extends StatelessWidget {
  final IconData icon;
  final String label;

  IconContentWidget({this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(label, style: labelTextStyle),
      ],
    );
  }
}
