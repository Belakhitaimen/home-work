import 'package:bmi_calculator/height.dart';
import 'package:bmi_calculator/male_female.dart';
import 'package:flutter/material.dart';
import 'age_calculator.dart';
import 'weght_calculator.dart';

void main() {
  runApp(BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff000319),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 9, 9, 51),
          title: Text('BMI CALCULATOR', style: TextStyle(color: Colors.white)),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaleFemale(),
            Height(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [WeightWidget(), SizedBox(width: 30), AgeWidget()],
            ),
            Container(
              height: 60,
              width: 380,
              color: Colors.pink,
              child: Center(
                child: Text(
                  'CALCULATE',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
