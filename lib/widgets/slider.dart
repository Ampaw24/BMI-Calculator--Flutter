
import 'package:bmicalculator/views/homepage.dart';
import 'package:flutter/material.dart';


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
    return SliderTheme(
                          
                          data: SliderTheme.of(context).copyWith(
                            overlayColor: Color(0x29EB1555),
                                 activeTrackColor: Colors.white,
                            thumbColor: Color(0xFFEB1555),
                            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                            overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0)
                          ),
                          child: Slider(
                            inactiveColor: Color(0xFF8D8E98),
                            min:180 ,
                            max: 220,
                            value:height.toDouble(),
                            onChanged: ((double value) {
                              setState(() {
                                height = value.round();
                              });
                            }),
                          ),
                        );
  }
}