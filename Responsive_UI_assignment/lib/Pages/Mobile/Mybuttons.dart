import 'package:flutter/material.dart';

class Mybuttons extends StatelessWidget {
  final String name;
  final width;
  final fonts;
  const Mybuttons(
      {super.key,
      required this.name,
      required this.width,
      required this.fonts});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Container(
        height: 50,
        width: width,
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(14)),
        child: Center(
          child: Text(
            name,
            style: TextStyle(color: Colors.white, fontSize: fonts),
          ),
        ),
      ),
    );
  }
}
