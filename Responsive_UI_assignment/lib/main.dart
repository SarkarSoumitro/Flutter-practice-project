import 'package:flutter/material.dart';
import 'package:responsive_ui_assignment/Responsive/Respon.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: MobileHomepage(),
      //home: Tablet(),
      // home: Laptop(),
      home: respons(),
    );
  }
}
