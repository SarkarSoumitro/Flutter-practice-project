import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

main() {
  runApp(const intro());
}

class intro extends StatelessWidget {
  const intro({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AlerDialogs(),
    );
  }
}

//learning body

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inventory App"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        height: 250,
        width: 250,
        alignment: Alignment.topCenter,
        margin: EdgeInsets.all(30),
        padding: EdgeInsets.all(40),
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(color: Colors.black, width: 5),
        ),
        child: Image.network("https://rabbil.com/files/rabbilVai.png"),
      ),
    );
  }
}

//learning row

class HomeActivity1 extends StatelessWidget {
  const HomeActivity1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inventory app row"),
        backgroundColor: Colors.yellow,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              height: 100,
              width: 100,
              child: Image.network("https://rabbil.com/files/rabbilVai.png")),
          Container(
              height: 100,
              width: 100,
              child: Image.network("https://rabbil.com/files/rabbilVai.png")),
          Container(
              height: 100,
              width: 100,
              child: Image.network("https://rabbil.com/files/rabbilVai.png")),
          Container(
              height: 100,
              width: 100,
              child: Image.network("https://rabbil.com/files/rabbilVai.png")),
        ],
      ),
    );
  }
}

//flutter button
//Elevated , text , outline buttons

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  MySnacbar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    //style for buttons
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        padding: EdgeInsets.all(20),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(40))));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Inventory app"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
              onPressed: () {
                MySnacbar("I am text button", context);
              },
              child: Text("Text button")),
          ElevatedButton(
            onPressed: () {
              MySnacbar("I am elevated button", context);
            },
            child: Text("Elevated button"),
            style: buttonStyle,
          ),
          OutlinedButton(
              onPressed: () {
                MySnacbar("Hi there i am text button", context);
              },
              child: Text("Text button"))
        ],
      ),
    );
  }
}

class AlerDialogs extends StatelessWidget {
  const AlerDialogs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AlertDialog"),
        backgroundColor: Colors.amber,
      ),
    );
  }
}
