import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({required this.reqicon,this.onPressed });
    final VoidCallback? onPressed;
  final Widget reqicon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: reqicon,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      onPressed:onPressed,
            shape: CircleBorder(),
      fillColor: Color(0xff4c4f5c),
    );
  }


}
