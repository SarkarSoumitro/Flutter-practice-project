import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: test(),
      debugShowCheckedModeBanner: true,
    );
  }
}

class test extends StatelessWidget {
  const test({super.key});

  MySnacbar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Styling App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //flutter text styling
            Text(
              "Flutter Text Styling",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            //Experiment with text style
            Text(
              "Experiment with text styles",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            ),

            //a button with a snackbar
            TextButton(
              onPressed: () {
                MySnacbar("You clicked the button", context);
              },
              child: Text("click me"),
            ),

            //Welcome to flutter
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //welcome to
                Text("Welcome to", style: TextStyle(fontSize: 20)),

                //flutter
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Flutter",
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
