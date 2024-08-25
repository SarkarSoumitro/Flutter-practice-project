import 'package:flutter/material.dart';

class Expands extends StatelessWidget {
  const Expands({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.green,
              )),
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.red,
              )),
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.yellow,
              )),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.deepOrange,
              ))
        ],
      ),
    );
  }
}
