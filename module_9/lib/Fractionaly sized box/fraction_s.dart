import 'package:flutter/material.dart';
import 'package:module_9/Layout%20builder/layout.dart';

class FractionS extends StatelessWidget {
  const FractionS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("F R A T I O N A L  SIZED B O X"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: FractionallySizedBox(
          widthFactor: .7,
          heightFactor: .3,
          child: Container(
            color: Colors.orange,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Layoutb()));
                },
                child: Text("Go to Layout builder")),
          ),
        ),
      ),
    );
  }
}
