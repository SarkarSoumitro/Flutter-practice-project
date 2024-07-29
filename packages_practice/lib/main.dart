

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:packages_practice/Packages/Liquid_pull_request.dart';
import 'package:packages_practice/Packages/cube_swipe.dart';
import 'package:packages_practice/Packages/goggle_fonts.dart';
import 'package:packages_practice/Packages/percentage_indicator.dart';

import 'Packages/avater_glow.dart';

void main(){
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     // home: Glow(),
      //home: Fonts(),
        //home: Liquid_pull(),
     //home: percentage(),
      home:cube(),
     );
  }
}
