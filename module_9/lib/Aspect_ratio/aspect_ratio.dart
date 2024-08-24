import 'package:flutter/material.dart';
import 'package:module_9/Fractionaly%20sized%20box/fraction_s.dart';

class aspect extends StatelessWidget {
  const aspect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("A S P E C T   R A T I O"),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.green[100],
            alignment: Alignment.center,
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                color: Colors.green,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FractionS()));
              },
              child: Text("Go to Fractional Sized box")),
        ],
      ),
    );
  }
}
