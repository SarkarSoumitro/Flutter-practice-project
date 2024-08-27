import 'package:flutter/material.dart';

import '../Mobile/Mybuttons.dart';

class Laptop extends StatelessWidget {
  const Laptop({super.key});

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
              padding: const EdgeInsets.only(
                left: 95,
              ),
              child: Text(
                "HUMMING\nBIRD .",
                style: TextStyle(fontSize: 22),
              ),
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 100),
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
      body: Container(
        height: 350,
        margin: EdgeInsets.only(top: 80),
        decoration: BoxDecoration(color: Colors.transparent),
        child: Padding(
          padding: EdgeInsets.only(left: 100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //a column for the text side
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "FLUTTER WEB.\nTHE BASICS",
                    style: TextStyle(fontSize: 60, fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "In this course we will go over the basics of using\nflutter Web for development.Topics will include\nResponsive Layout, Deploying, Font Changes, Hover\nfunctionality, Models and more.",
                    style: TextStyle(fontSize: 22),
                    softWrap: false,
                  ),
                ],
              ),
              const SizedBox(
                width: 50,
              ),
              Padding(
                padding: EdgeInsets.only(right: 100),
                child: Mybuttons(name: "Join course", width: 250, fonts: 20),
              )
              // the button
            ],
          ),
        ),
      ),
    );
  }
}
