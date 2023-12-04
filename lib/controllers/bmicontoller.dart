// ignore_for_file: unused_element, non_constant_identifier_names

import 'dart:math';

import 'package:flutter/material.dart';

class BMIcontroller extends ChangeNotifier {
  int _height = 180;
  int _age = 25;
  int _weight = 200;
  int get height => _height;

  set height(int value) {
    _height = value;
  }

  int get weight => _weight;

  set weight(int value) {
    _weight = value;
  }

  int get age => _age;

  set age(int value) {
    _age = value;
  }

  double calculateBmi(int height, int weight) {
    double bmiresults = weight / pow(height, 2);
    return bmiresults;
  }

  String Adultresults(double bmiresults) {
    String category;
    if (bmiresults < 18.5) {
      category = "Underweight";
    } else if (bmiresults >= 18.5 && bmiresults <= 24.9) {
      category = "Normal weight";
    } else if (bmiresults >= 25 && bmiresults <= 29.9) {
      category = "Overweight";
    } else {
      category = "Obesity";
    }
    return category;
    
  }

  String ChildResult(double bmiresults) {
    String category;
    if (bmiresults < 18.5) {
      category = "Underweight";
    } else if (bmiresults >= 18.5 && bmiresults <= 24.9) {
      category = "Normal weight";
    } else if (bmiresults >= 25 && bmiresults <= 29.9) {
      category = "Overweight";
    } else {
      category = "Obesity";
    }
    return category;
  }
}
