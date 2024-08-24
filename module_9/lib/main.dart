import 'package:flutter/material.dart';
import 'package:module_9/Fractionaly%20sized%20box/fraction_s.dart';

void main() {
  runApp(module());
}

class module extends StatelessWidget {
  const module({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //  home: ac1(),
      home: FractionS(),
    );
  }
}
