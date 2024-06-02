
import 'package:bmi_calculator/screens/home/main_home_screen.dart';
import 'package:flutter/material.dart';


void main () => runApp(const BMICalculator());
class BMICalculator extends StatelessWidget{
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
 return const MaterialApp(
   debugShowCheckedModeBanner: false,
   // theme: ThemeData.dark().copyWith(
   //   primaryColor: const Color(0xFF0A0C21),
   //   scaffoldBackgroundColor: const Color(0xFF0A0C21),
   // ),
   home: MainHomeScreen(),
 );
  }
}

//12-9 done
