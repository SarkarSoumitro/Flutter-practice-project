import 'package:flutter/material.dart';
import 'package:listview_builder/rectangle_tile.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Newapp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Newapp extends StatelessWidget {
  Newapp({super.key});

  final List _post = [
    'T I L E  1',
    'T I L E  2',
    'T I L E  3',
    'T I L E  4',
    'T I L E  5',
    'T I L E  6',
    'T I L E  7',
    'T I L E  8',
    'T I L E  9',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(171, 204, 121, 0.26),
        appBar: AppBar(
          centerTitle: true,
          title: Text("L I S T VIEW B U I L D E R"),
          backgroundColor: Colors.transparent,
        ),
        body: ListView.builder(
            itemCount: _post.length,
            itemBuilder: (context, index) {
              return rectangle(name: _post[index]);
            }));
  }
}
