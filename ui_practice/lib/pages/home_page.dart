

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class intropage extends StatelessWidget {
  const intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent[200],
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [
            SizedBox(height: 25),
            ///shop name
            Text("SHUSHI MAN",
              style: GoogleFonts.dmSerifDisplay(fontSize: 28,color: Colors.white),),

            //icon
            const SizedBox(height: 25,),
            //title

            //subtitle

            //button

          ],
        ),
      ),
    );
  }
}
