import 'package:flutter/material.dart';

class Blocks extends StatelessWidget {
  const Blocks({required this.colour, required this.conts, this.actiion});
  final Color colour;
  final Widget conts;
  final Function? actiion;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: conts,
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
