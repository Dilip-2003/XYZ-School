import 'package:flutter/material.dart';
import 'package:xyz_school/widgets/results.dart';
import 'package:xyz_school/widgets/splash_screen.dart';

void main(){
  runApp(const MySchool());
}

class MySchool extends StatelessWidget {
  const MySchool({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MySplashScreen(),
    );
  }
}



