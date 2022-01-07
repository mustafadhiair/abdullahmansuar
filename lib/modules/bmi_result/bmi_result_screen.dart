import 'package:flutter/material.dart';

class BMIResult extends StatelessWidget {
  final int result;
  final bool isMale;
  final int age;

  BMIResult({
    @required this.result,
    @required this.age,
    @required this.isMale,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_left,
            size: 50.0,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("BMI Result"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Gender : ${isMale ? "Male" : "Female"}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            Text(
              "Result : $result",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            Text(
              "Age : $age",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
