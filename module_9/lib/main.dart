import 'package:flutter/material.dart';
import 'package:module_9/Responsivegrid/responsive.dart';

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
      // home: FractionS(),
      //home: Expands(),
      // home: flex(),
      //home: Media(),
      // home: media(),
      home: responsive(),
    );
  }
}
