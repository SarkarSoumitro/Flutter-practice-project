import 'package:flutter/material.dart';

class Dheader extends StatefulWidget {
  const Dheader({super.key});

  @override
  State<Dheader> createState() => _DheaderState();
}

class _DheaderState extends State<Dheader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      width: double.infinity,
      height: 180,
      padding: EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "SKILL UP NOW",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
          ),
          Text(
            "TAP HERE",
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
