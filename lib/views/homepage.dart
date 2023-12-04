// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors
import 'package:bmicalculator/controllers/bmicontoller.dart';
import 'package:bmicalculator/specs/appcolors.dart';
import 'package:bmicalculator/specs/cardcontent.dart';
import 'package:bmicalculator/specs/constants.dart';
import 'package:bmicalculator/views/resultspage.dart';
import 'package:bmicalculator/widgets/blocks.dart';
import 'package:bmicalculator/widgets/bottomButton.dart';
import 'package:bmicalculator/widgets/calculateBrain.dart';
import 'package:bmicalculator/widgets/roundedbutton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

const buttonHeight = 80.0;

enum Gender { male, female }

class InputApp extends StatefulWidget {
  const InputApp({super.key});

  @override
  State<InputApp> createState() => _InputAppState();
}

class _InputAppState extends State<InputApp> {
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    final bmicontext = context.read<BMIcontroller>();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF0A0E21),
          title: Center(child: Text("BMI-CALCULATOR")),
          elevation: 0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  child: Blocks(
                    conts: CardContent(
                      icons: FontAwesomeIcons.mars,
                      gender: "Male",
                    ),
                    color: selectedGender == Gender.male
                        ? AppColors.activecolor
                        : AppColors.inactiveCardcolor,
                  ),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    selectedGender = Gender.female;
                    print("Female Tap");
                  },
                  child: Blocks(
                    conts: CardContent(
                      gender: "FEMALE",
                      icons: FontAwesomeIcons.venus,
                    ),
                    color: selectedGender == Gender.female
                        ? AppColors.activecolor
                        : AppColors.inactiveCardcolor,
                  ),
                )),
              ],
            )),
            Expanded(
                child: Blocks(
                    conts: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "HEIGHT",
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              bmicontext.height.toString(),
                              style: TextStyle(
                                  fontSize: textSize, fontWeight: fontweight),
                            ),
                            Text(
                              "cm",
                              style: TextStyle(fontSize: 18.0),
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                              overlayColor: Color(0x29EB1555),
                              activeTrackColor: Colors.white,
                              thumbColor: Color(0xFFEB1555),
                              thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 15.0),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 30.0)),
                          child: Slider(
                            inactiveColor: Color(0xFF8D8E98),
                            min: 120,
                            max: 220,
                            value: bmicontext.height.toDouble(),
                            onChanged: ((double value) {
                              setState(() {
                                bmicontext.height = value.round();
                              });
                            }),
                          ),
                        )
                      ],
                    ),
                    color: Color(0xFF1D1E33))),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: Blocks(
                        conts: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "WEIGHT",
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  bmicontext.weight.toString(),
                                  style: numberStyleText(),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundedButton(
                                  onPressed: () {
                                    setState(() {
                                      bmicontext.weight += 1;
                                    });
                                  },
                                  reqicon: Icon(
                                    FontAwesomeIcons.add,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                RoundedButton(
                                  onPressed: () {
                                    setState(() {
                                      bmicontext.weight -= 1;
                                    });
                                  },
                                  reqicon: Icon(
                                    FontAwesomeIcons.minus,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        color: Color(0xFF1D1E33))),
                Expanded(
                    child: Blocks(
                  conts: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "AGE",
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            bmicontext.age.toString(),
                            style: numberStyleText(),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundedButton(
                            onPressed: () {
                              setState(() {
                                bmicontext.age += 1;
                              });
                            },
                            reqicon: Icon(
                              FontAwesomeIcons.add,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RoundedButton(
                            onPressed: () {
                              setState(() {
                                bmicontext.age -= 1;
                              });
                            },
                            reqicon: Icon(
                              FontAwesomeIcons.minus,
                              color: Colors.white,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  color: Color(0xFF1D1E33),
                ))
              ],
            )),
            BottomButton(
              buttonTitle: "Calculate",
              onTap: () {
                print(bmicontext.calculateBmi(
                    bmicontext.height, bmicontext.weight));
              },
            ),
          ],
        ));
  }
}
