import 'dart:async';

import 'package:empolyee_details_app_using_api/Screens/Homepage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Timer to navigate to the next screen after 3 seconds
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Homepage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Customize your splash screen color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/worker.png',
              width: 250, // Adjust the size of your logo
              height: 250,
            ),
            Text(
              "Employee data",
              style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
