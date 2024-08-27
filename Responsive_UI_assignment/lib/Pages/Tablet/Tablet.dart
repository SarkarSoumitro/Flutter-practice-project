import 'package:flutter/material.dart';

import '../Mobile/Mybuttons.dart';

class Tablet extends StatelessWidget {
  const Tablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 200,
        backgroundColor: Colors.transparent,
        title: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Text(
                "HUMMING\nBIRD .",
                style: TextStyle(fontSize: 22),
              ),
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 90),
            child: Row(
              children: [
                Text(
                  "Episodes",
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  width: 50,
                ),
                Text(
                  "About",
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 140, vertical: 0),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "FLUTTER WEB.",
                  style: TextStyle(fontSize: 60, fontWeight: FontWeight.w900),
                ),
                Text(
                  "THE BASICS",
                  style: TextStyle(fontSize: 60, fontWeight: FontWeight.w900),
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            Text(
              "In this course we will go over the basics of using flutter Web for development.Topics will include Responsive Layout, Deploying, Font Changes, Hover functionality, Models and more.",
              style: TextStyle(fontSize: 22),
            ),
            const SizedBox(
              height: 40,
            ),
            Mybuttons(
              name: "Join course",
              width: 300,
              fonts: 20,
            )
          ],
        ),
      ),
    );
  }
}
