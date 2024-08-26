import 'package:flutter/material.dart';

class bootstrap extends StatelessWidget {
  const bootstrap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter bootstrap"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
    );
  }
}
