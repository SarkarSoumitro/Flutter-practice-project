import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(New());
}

class New extends StatelessWidget {
  const New({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: assignment(),
    );
  }
}

class assignment extends StatelessWidget {
  const assignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Greeting app"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Hello world text
            Text(
              "Hello , world!",
              style: GoogleFonts.dmSerifDisplay(
                  fontSize: 18, color: Colors.red, fontWeight: FontWeight.bold),
            ),

            //for certain space
            const SizedBox(
              height: 10,
            ),

            //welcome to flutter text
            Text(
              "Welcome to flutter!",
              style: GoogleFonts.dmSerifDisplay(fontSize: 17),
            ),

            //for certain space
            const SizedBox(
              height: 10,
            ),

            //Flutter image
            Image.asset(
              "images/flutter.png",
              height: 100,
            ),

            //for certain space
            const SizedBox(
              height: 10,
            ),

            //Elevated button
            ElevatedButton(
              onPressed: () {},
              child: Text("Press me"),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
