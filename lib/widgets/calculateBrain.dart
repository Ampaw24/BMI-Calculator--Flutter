import 'dart:math';

class CalculateBmi {
  CalculateBmi({this.height, this.weight});
  final int? height;
  final int? weight;

  late double _bmi;
  String Calculator() {
    _bmi = weight! / pow(height! / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25) {
      return "You Are Underweight";
    } else if (_bmi > 18.5) {
      return "You are Normal";
    } else {
      return "You are Obessed";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return "You Need to Eat Alot Bro!!";
    } else if (_bmi > 18.5) {
      return "You are GyeGye ";
    } else {
      return "You need more Exercise";
    }
  }
}
