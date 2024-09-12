import 'package:flutter/material.dart';

void main() {
  runApp(new Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int count = 0;

  void countsum() {
    setState(() {
      count += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "C O U N T E R  A P P",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.grey[300],
      ),
      body: Center(
        child: Text(
          '${count}',
          style: TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[300],
        onPressed: () {
          countsum();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
