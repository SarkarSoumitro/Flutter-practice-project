import 'package:flutter/material.dart';
import 'package:practice_assignment_04/pages/cartpage.dart';

void main() {
  runApp(new Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: cartpage(),
    );
  }
}
