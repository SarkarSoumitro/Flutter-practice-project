

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:module_9/Card/card.dart';
import 'package:module_9/Circular%20progress/circu.dart';

import 'Navigation by passing data/navi.dart';

void main(){
  runApp(module());
}

class module extends StatelessWidget {
  const module({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ac1(),
    );
  }
}


