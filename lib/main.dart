// ignore_for_file: prefer_const_constructors
import 'package:bmicalculator/controllers/bmicontoller.dart';
import 'package:bmicalculator/views/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';



// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables
Future<void> main() async {
  Provider.debugCheckInvalidValueType = null;
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<BMIcontroller>(
            create: (_) => BMIcontroller()),
       
      ],
      child: GetMaterialApp(
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

