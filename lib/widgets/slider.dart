
// ignore_for_file: unused_local_variable, use_key_in_widget_constructors, must_be_immutable

import 'package:bmicalculator/controllers/bmicontoller.dart';
import 'package:bmicalculator/views/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class SliderCustom extends StatefulWidget {
int height;
int minValue;
int maxValue;
SliderCustom({required this.height,required this.minValue,required this.maxValue});

  @override
  State<SliderCustom> createState() => _SliderCustomState();
}

class _SliderCustomState extends State<SliderCustom> {
  @override
  Widget build(BuildContext context) {
     final bmicontext = context.read<BMIcontroller>();
    return SliderTheme(
                          
                          data: SliderTheme.of(context).copyWith(
                            overlayColor: const Color(0x29EB1555),
                                 activeTrackColor: Colors.white,
                            thumbColor: const Color(0xFFEB1555),
                            thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                            overlayShape: const RoundSliderOverlayShape(overlayRadius: 30.0)
                          ),
                          child: Slider(
                            inactiveColor: const Color(0xFF8D8E98),
                            min:180 ,
                            max: 220,
                            value:bmicontext.height.toDouble(),
                            onChanged: ((double value) {
                              setState(() {
                                bmicontext.height = value.round();
                              });
                            }),
                          ),
                        );
  }
}