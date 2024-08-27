import 'package:flutter/material.dart';
import 'package:responsive_ui_assignment/Pages/Mobile/Drawer_header.dart';
import 'package:responsive_ui_assignment/Pages/Mobile/Drawer_list.dart';

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
            Dlist(name: "Episodes", icon: Icons.video_call_rounded),
            Dlist(name: "About", icon: Icons.account_box_outlined),
          ],
        ),
      )),
      body: Center(
        child: Column(
          children: [Text()],
        ),
      ),
    );
  }
}
