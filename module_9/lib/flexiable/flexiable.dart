import 'package:flutter/material.dart';

class flex extends StatelessWidget {
  const flex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flexiable"),
        centerTitle: true,
        backgroundColor: Colors.white38,
      ),
      body: Column(
        children: [
          Flexible(
              fit: FlexFit.loose,
              flex: 1,
              child: Container(
                color: Colors.green,
              )),
          Flexible(
              fit: FlexFit.loose,
              flex: 2,
              child: Container(
                color: Colors.red,
              )),
          Flexible(
              fit: FlexFit.loose,
              flex: 2,
              child: Container(
                color: Colors.yellow,
              )),
          Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: Container(
                color: Colors.deepOrange,
              ))
        ],
      ),
    );
  }
}
