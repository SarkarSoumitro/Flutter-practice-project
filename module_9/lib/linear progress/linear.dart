import 'package:flutter/material.dart';
import 'package:module_9/Aspect_ratio/aspect_ratio.dart';

class linear extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "L I N E A R   P R O G R E S S",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent[200],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: LinearProgressIndicator(
                minHeight: 10,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => aspect()));
                },
                child: Text("Go to aspect ratio "))
          ],
        ));
  }
}
