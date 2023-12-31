
// ignore_for_file: use_key_in_widget_constructors

import 'package:bmicalculator/specs/appcolors.dart';
import 'package:bmicalculator/specs/constants.dart';
import 'package:bmicalculator/widgets/blocks.dart';
import 'package:bmicalculator/widgets/bottomButton.dart';
import 'package:flutter/material.dart';


class ResultsPage extends StatelessWidget {
  const ResultsPage(
      {required this.bmiInter,
      required this.bmiStatus,
      required this.bmiresult});
  final String bmiresult;
  final String bmiStatus;
  final String bmiInter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const  Color(0xFF0A0E21),
        title:const Center(child: Text("BMI-CALCULATOR")),
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: Container(
            padding: const EdgeInsets.all(15),
            alignment: Alignment.bottomLeft,
            child:const Text(
              "Your Results",
              style: kTitleFnt,
            ),
          )),
          Expanded(
            flex: 5,
            child: Blocks(
              color: AppColors.activecolor,
              conts: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    bmiStatus.toUpperCase(),
                    style: kResultText,
                  ),
                  Text(
                    bmiresult,
                    style: kReadingText,
                  ),
                  Text(
                  bmiInter.toUpperCase(),
                    style: kinterludeText,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: "Re-Calculate",
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
