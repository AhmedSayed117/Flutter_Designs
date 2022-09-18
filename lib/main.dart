import 'package:bmi_app/modules/counter/counter.dart';
import 'package:bmi_app/modules/login/login_page.dart';
import 'package:flutter/material.dart';


import 'modules/bmi/Bmi_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
