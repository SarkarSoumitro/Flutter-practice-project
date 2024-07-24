import 'package:flutter/material.dart';

void main() {
  runApp(IntroApp());
}

class IntroApp extends StatelessWidget {
  const IntroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
     // home: Row(),
    );
  }
}

// column

class Homee extends StatelessWidget {
  const Homee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        title: Text("Intro app"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
       mainAxisSize: MainAxisSize.max,
       mainAxisAlignment: MainAxisAlignment.spaceAround,
       crossAxisAlignment: CrossAxisAlignment.end,
       // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("hello world"),
          Text("hello world"),
          Text("hello world"),
          Text("hello world"),
          ElevatedButton(onPressed: (){}, child: Text("Click here")),
          IconButton(onPressed: (){}, icon: Icon(Icons.access_alarm)),
        ],
      ),
    );
  }
}

class Homeee extends StatelessWidget {
  const Homeee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Scaffold provides structure and app bar
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        title: Text("Intro app"),
        backgroundColor: Colors.blue,
      ),
      body: Row( // Use Row for horizontal layout
        mainAxisSize: MainAxisSize.min, // Expand to fill available space
        mainAxisAlignment: MainAxisAlignment.spaceAround, // Distribute evenly
        crossAxisAlignment: CrossAxisAlignment.start, // Align content center
        children: [
          Column(
            children: [
              Text("column 1")
            ],
          ),
          Column(
            children: [
              Text("column 2")
            ],
          ),
          // Text("hello world"),
          // Text("hello world"),
          // Text("Column 1"),
          // ElevatedButton(onPressed: () {}, child: Text("Click here")),
          // IconButton(onPressed: () {}, icon: Icon(Icons.access_alarm)),
          Row(
            children: [
              Text("text 1"),
              Text("text 1"),
              Text("text 1"),
              Text("text 1"),
              Text("text 1"),
              Row(
                children: [
                  Text("text 1"),
                  Text("text 1"),
                  Text("text 1"),
                  Text("text 1"),
                  Text("text 1"),
                ],
              )
            ],
          ),
          Row(
            children: [
              Text("text 1"),
              Text("text 1"),
              Text("text 1"),
              Text("text 1"),
              Text("text 1"),
            ],
          )
        ],
      ),
    );
  }
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Scaffold provides structure and app bar
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        title: Text("Intro app"),
        backgroundColor: Colors.blue,
      ),
      body: Row( // Use Row for horizontal layout
        mainAxisSize: MainAxisSize.min, // Expand to fill available space
        mainAxisAlignment: MainAxisAlignment.spaceAround, // Distribute evenly
        crossAxisAlignment: CrossAxisAlignment.start, // Align content center
        children: [
          Column(
            children: [
              Text("hi there"),
              Text("hi there"),
              Text("hi there"),
              Text("hi there"),
              Text("hi there"),
              Column(
                children: [
                  Text("hi there"),
                  Text("hi there"),
                  Text("hi there"),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

