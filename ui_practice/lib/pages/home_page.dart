

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_practice/components/button.dart';


class intropage extends StatelessWidget {
  const intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent[200],
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            children: [
              SizedBox(height: 25),
              ///shop name
              Text("SHUSHI MAN",
                style: GoogleFonts.dmSerifDisplay(fontSize: 28,color: Colors.white),),

              //icon
              const SizedBox(height: 25,),
              Image.asset("images/sushi.png"),
              //title
              Text("THE TASTE OF JAPANES FOOD",
                style:GoogleFonts.dmSerifDisplay(
                    fontSize: 44,
                    color: Colors.white),),
              const SizedBox(height: 10,),

              //subtitle
               Text("Feel the taste of the most popular japanese foood from anywhere and anytime",
               style: TextStyle(
                 color: Colors.grey[800],
                 height: 2
               ),),
              const SizedBox(height: 15,),
              //button
              MyButton(text: "Get Started"),

            ],
          ),
        ),
      ),
    );
  }
}
