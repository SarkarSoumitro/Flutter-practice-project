
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_practice/pages/home_page.dart';

void main(){
  runApp(ui());
}

class ui extends StatelessWidget {
  const ui({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: intropage(),
    );
  }
}