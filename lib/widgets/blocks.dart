// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class Blocks extends StatelessWidget {
  const Blocks({required this.color, required this.conts, this.action});
  final Color color;
  final Widget conts;
  final Function? action;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: conts,
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
