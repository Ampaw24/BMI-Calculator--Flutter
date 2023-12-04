import 'package:flutter/material.dart';

const buttonHeight = 80.0;
const activecolor = Color.fromARGB(255, 37, 38, 51);
const buttoncolor = Color(0xFFEB1555);
const inactiveCardcolor = Color(0xFF111328);
const textSize = 50.0;
const fontb = FontWeight.w900;

enum Gender { male, female }

TextStyle numberStyleText() {
  return const TextStyle(fontSize: textSize, fontWeight: fontb);
}

const kLargeButtonFnt = TextStyle(fontSize: 25, fontWeight: FontWeight.bold);
const kTitleFnt = TextStyle(fontSize: 50, fontWeight: FontWeight.bold);
const kResultText = TextStyle(
    fontSize: 22.0, color: Color(0xff24D876), fontWeight: FontWeight.bold);
const kReadingText = TextStyle(fontSize: 100.0, fontWeight: FontWeight.bold);
const kinterludeText = TextStyle(fontSize: 22.0);
