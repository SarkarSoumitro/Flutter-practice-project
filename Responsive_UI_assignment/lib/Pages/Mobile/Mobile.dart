import 'package:flutter/material.dart';
import 'package:responsive_ui_assignment/Pages/Mobile/Drawer_header.dart';
import 'package:responsive_ui_assignment/Pages/Mobile/Drawer_list.dart';
import 'package:responsive_ui_assignment/Pages/Mobile/Mybuttons.dart';

class MobileHomepage extends StatelessWidget {
  const MobileHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        title: Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(top: 22.0, right: 20),
            child: Text("HUMMING\nBIRDS ."),
          ),
        ),
      ),
      drawer: Drawer(
          child: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Dheader(),
            const SizedBox(
              height: 20,
            ),
            Dlist(name: "Episodes", icon: Icons.ondemand_video_outlined),
            Dlist(name: "About", icon: Icons.info),
          ],
        ),
      )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 120),
        child: Column(
          children: [
            Text(
              "FLUTTER WEB.\nTHE BASICS",
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.w900),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "In this course we will go over the basics of using flutter Web for development.Topics will include Responsive Layout, Deploying, Font Changes, Hover functionality, Models and more.",
              style: TextStyle(fontSize: 17),
            ),
            const SizedBox(
              height: 50,
            ),
            Mybuttons(
              name: "Join course",
              width: double.infinity,
              fonts: 12,
            )
          ],
        ),
      ),
    );
  }
}
