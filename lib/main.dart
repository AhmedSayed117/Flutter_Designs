import 'package:flutter/material.dart';
import 'package:learn/Bmi_result_screen.dart';
import 'package:learn/Bmi_screen.dart';
import 'package:learn/login_page.dart';
import 'package:learn/massenger.dart';
import 'package:learn/user_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiScreen(),
    );
  }
}
