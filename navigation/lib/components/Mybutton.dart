import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String buttonname;
  const Mybutton({super.key, required this.buttonname});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(16)),
      child: Center(
        child: Text(
          buttonname,
          style: TextStyle(color: Colors.white, fontSize: 13),
        ),
      ),
    );
  }
}
