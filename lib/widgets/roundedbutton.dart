// ignore_for_file: sort_child_properties_last, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({required this.reqicon,this.onPressed , this.onLongP});
    final VoidCallback? onPressed;
     final VoidCallback? onLongP;
  final Widget reqicon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: onLongP,
      child: RawMaterialButton(
        child: reqicon,
        elevation: 6.0,
        constraints:const BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0,
        ),
        onPressed:onPressed,
              shape: const CircleBorder(),
        fillColor: const Color(0xff4c4f5c),
      ),
    );
  }


}
