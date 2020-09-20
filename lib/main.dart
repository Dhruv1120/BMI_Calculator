import 'package:flutter/material.dart';
import 'dart:convert';
import 'input_page.dart';
import 'constant.dart';
import 'resultPage.dart';

void main() => runApp(BMIcalculator());

class BMIcalculator  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home:HomePage(),
    );
  }
}


