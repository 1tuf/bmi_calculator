import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
      home: SafeArea(child: InputPage()),
    );
  }
}
