import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class CardContent extends StatelessWidget {
  CardContent({required this.gender,required this.icons});
  final gender;
  final IconData icons;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icons,
          size: buttonHeight,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          gender,
          style: TextStyle(
            color: Color(0xff8D8E98),
            fontSize: 18.0,
          ),
        )
      ],
    );
  }
}
