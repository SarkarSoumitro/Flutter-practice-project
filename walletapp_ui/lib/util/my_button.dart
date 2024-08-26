import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final imagepath;
  final String buttonText;
  const MyButton(
      {super.key, required this.buttonText, required this.imagepath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade600,
                    blurRadius: 20,
                    spreadRadius: 2)
              ]),
          child: Center(
            child: Image.asset(imagepath),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          buttonText,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
