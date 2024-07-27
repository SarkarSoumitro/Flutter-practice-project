

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class percentage extends StatefulWidget {
  const percentage({super.key});

  @override
  State<percentage> createState() => _percentageState();
}

class _percentageState extends State<percentage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(

        ),
      ),
    );
  }
}
