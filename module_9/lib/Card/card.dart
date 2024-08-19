
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class card extends StatelessWidget {
  const card({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("C A R D"),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent[200],
      ),
      body: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
          elevation: 80,
          color: Colors.green[300],
          shadowColor: Colors.orange[100],
          child: SizedBox(
            height: 200,
            width: 200,
            child: Center(
              child: Text("I AM BOX HERE"),
            ),
          ),
        ),
      ),
    );
  }
}
