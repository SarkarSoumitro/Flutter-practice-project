

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Fonts extends StatelessWidget {
  const Fonts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
       body: Center(
         child: Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Text("Space Invaders",style: GoogleFonts.pressStart2p(
                 fontSize: 25,
                 color: Colors.white
               )),
               Text("Space Invaders",style: GoogleFonts.pressStart2p(
                   fontSize: 25,
                   color: Colors.white
               )),
             ],
           ),
         ),
       ),
    );
  }
}
