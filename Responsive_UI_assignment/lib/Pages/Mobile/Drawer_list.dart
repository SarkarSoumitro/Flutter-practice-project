import 'package:flutter/material.dart';

class Dlist extends StatelessWidget {
  final icon;
  final String name;
  const Dlist({super.key, required this.name, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              Expanded(
                  child: Icon(
                icon,
                size: 20,
                color: Colors.black,
              )),
              Expanded(
                  child: Text(
                name,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ))
            ],
          ),
        ),
      ),
    );
    ;
  }
}
