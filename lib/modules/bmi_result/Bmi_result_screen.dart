import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  final int age;
  final int weight;
  final int height;
  final bool gender;
  final int result;
 BmiResult({
   required this.age,
   required this.weight,
   required this.height,
   required this.gender,
   required this.result,
 })
;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI RESULT',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Age : $age",
              style: const TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30.0,
              ),
            ),
            Text(
              "Weight : $weight",
              style: const TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30.0,
              ),
            ),
            Text(
              "Height : $height",
              style: const TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30.0,
              ),
            ),
            Text(
              "Gender : ${gender?"MALE":"FEMALE"}",
              style: const TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30.0,
              ),
            ),
            Text(
              "Result : $result",
              style: const TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
