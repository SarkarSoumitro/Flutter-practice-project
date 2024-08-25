import 'package:flutter/material.dart';

class Singlechild extends StatelessWidget {
  const Singlechild({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("single child scroll view"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: 400,
              color: Colors.amber,
            ),
            Container(
              height: 400,
              width: 400,
              color: Colors.orangeAccent,
            ),
            Container(
              height: 400,
              width: 400,
              color: Colors.white60,
            ),
            Container(
              height: 400,
              width: 400,
              color: Colors.black,
            ),
            Container(
              height: 400,
              width: 400,
              color: Colors.green,
            ),
            Container(
              height: 400,
              width: 400,
              color: Colors.deepOrangeAccent,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.white60,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.deepOrangeAccent,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.amber,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.tealAccent,
            ),
          ],
        ),
      ),
    );
  }
}
