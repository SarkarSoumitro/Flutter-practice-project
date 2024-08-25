import 'package:flutter/material.dart';
import 'package:module_9/Media%20query1/style.dart';

class media extends StatelessWidget {
  const media({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Media query part 2",
          style: Headline(context),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
    );
  }
}
