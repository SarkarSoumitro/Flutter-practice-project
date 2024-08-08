

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_practice/components/button.dart';

import '../colors/colors.dart';

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
            decoration:BoxDecoration(color:primarycolors,borderRadius: BorderRadius.circular(20)),
            margin:const EdgeInsets.symmetric(horizontal:25),
            padding: const EdgeInsets.all(25),
            child: Row(
              children: [
                //promo message
                Column(
                  children: [
                    Text("Get 20% discount",style:GoogleFonts.dmSerifDisplay(fontSize: 20,color: Colors.white)),
                    const SizedBox(height: 20,),
                    //redeem button
                    MyButton(text:"Redeem", onTab: (){}),
                  ],
                ),
                //image will be here
                Image.asset('images/shushi.png'),
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
