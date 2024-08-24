import 'package:flutter/material.dart';

import '../Single child scroll view/singlechild.dart';

class Layoutb extends StatelessWidget {
  const Layoutb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('L A Y O U T  B U I L D E R'),
        centerTitle: true,
        backgroundColor: Colors.tealAccent,
      ),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 600) {
          return Container(
            height: 400,
            width: 400,
            color: Colors.blueGrey,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Singlechild()));
                },
                child: Text("Go to single child scroll view")),
          );
        } else {
          return Container(
            height: 200,
            width: 200,
            color: Colors.orangeAccent,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Singlechild()));
                },
                child: Text("Go to single child scroll view")),
          );
        }
      }),
    );
  }
}
