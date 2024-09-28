import 'package:empolyee_details_app_using_api/Screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
