import 'package:bmicalculator/specs/appcolors.dart';
import 'package:flutter/material.dart';
import '../specs/constants.dart';
import '../views/homepage.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({required this.buttonTitle, this.onTap});
  final VoidCallback? onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: AppColors.buttoncolor,
        width: double.infinity,
        height: 80.0,
        child: Center(
            child: Text(
          buttonTitle,
          style: kLargeButtonFnt,
        )),
      ),
    );
  }
}
