import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final TextEditingController _firstnumbercontroller = TextEditingController();
  final TextEditingController _secondnumbercontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("C A L C U L A T O R"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            TextField(
              controller: _firstnumbercontroller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Enter a number"),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _firstnumbercontroller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Enter a number"),
            )
          ],
        ),
      ),
    );
  }
}
