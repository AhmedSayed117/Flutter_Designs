import 'package:flutter/material.dart';
import 'package:learn/login_page.dart';
import 'package:learn/massenger.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  // const MyApp({Key? key}) : super(key: key);

  // const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Massenger(),
    );
  }
}
