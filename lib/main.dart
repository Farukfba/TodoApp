// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_app/pages/home_page.dart';

void main() async {
  // init hive
  await Hive.initFlutter();
  // open a box
  var box = await Hive.openBox('myBox');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
        theme: ThemeData(
          // Change the primary color (default purple)
          primaryColor: Colors.teal,
          // Change the hind color
          hintColor: Colors.black,
          checkboxTheme: CheckboxThemeData(
            // Change checkbox fill color
            fillColor: MaterialStateColor.resolveWith((states) => Colors.white),
          ),
          inputDecorationTheme: InputDecorationTheme(
            focusedBorder: OutlineInputBorder(
              // Change text field border color
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),
    );
  }
}