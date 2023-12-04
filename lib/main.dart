// ignore_for_file: prefer_const_constructors

import 'package:bmicalculator/views/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controllers/bmicontoller.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [Provider<BMIcontroller>(create:(_)=>BMIcontroller())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
                   textTheme:TextTheme(
            
           ),
        ),
          home: InputApp(),
      ),
    );
  }
}
