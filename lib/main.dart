import 'package:flutter/material.dart';
import 'package:untitled2/modules/bmi_result/bmi_result_screen.dart';
import 'package:untitled2/modules/bmi/bmi_screen.dart';
import 'package:untitled2/modules/login/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
