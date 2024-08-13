import 'package:flutter/material.dart';
import 'package:navigation/components/Mybutton.dart';
import 'package:navigation/pages/page_2.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: New(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class New extends StatelessWidget {
  const New({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[200],
        centerTitle: true,
        title: Text("N V I G A T I O N "),
        elevation: 5,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Mybutton(
            buttonname: "P A G E 1",
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Page_2()));
            },
          ),
          Mybutton(
            buttonname: "P A G E 2",
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Page_2()));
            },
          ),
        ],
      ),
    );
  }
}
