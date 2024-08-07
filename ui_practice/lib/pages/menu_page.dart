

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_practice/components/button.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Center(child: Text("Tokyo",style: TextStyle(color: Colors.grey[900]),)),
      ),
      body: Column(
        children: [
          //primary banner
          Container(
            child: Row(
              children: [
                //promo message
                Column(
                  children: [
                    Text("Get 20% discount"),
                     //redeem button
                    MyButton(text:"Redeem", onTab: (){}),
                  ],
                ),
                //redeem button

                //image will be here
              ],
            ),
          )

          //search bar

          //menu list

          //popular food
        ],
      ),
    );
  }
}
