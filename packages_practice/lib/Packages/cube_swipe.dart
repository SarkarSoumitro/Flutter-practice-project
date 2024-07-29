

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';

class cube extends StatefulWidget {
  const cube({super.key});

  @override
  State<cube> createState() => _cubeState();
}

class _cubeState extends State<cube> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CarouselSlider(
        slideTransform: CubeTransform(),
        unlimitedMode: true,
        children: [
          Container(
            color: Colors.deepOrange,
          ),
          Container(
            color: Colors.deepOrange,
          ),
        ],
      ) ,
    );
  }
}
