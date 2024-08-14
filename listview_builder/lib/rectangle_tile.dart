import 'package:flutter/material.dart';

class rectangle extends StatelessWidget {
  final String name;
  const rectangle({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromRGBO(248, 184, 253, 0.8),
        ),
        height: 200,
        child: Center(
          child: Text(
            name,
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
