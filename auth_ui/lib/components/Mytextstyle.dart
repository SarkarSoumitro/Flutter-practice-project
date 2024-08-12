import 'package:flutter/material.dart';

class Mytextstyle extends StatelessWidget {
  final Controller;
  final String hinttext;
  final bool obsecureText;

  const Mytextstyle(
      {super.key,
      required this.Controller,
      required this.hinttext,
      required this.obsecureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: Controller,
        obscureText: obsecureText,
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade100)),
            fillColor: Colors.grey.shade100,
            filled: true,
            hintText: hinttext,
            hintStyle: TextStyle(color: Colors.grey[500])),
      ),
    );
  }
}
