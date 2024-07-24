
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(Introapp());
}


class Introapp extends StatelessWidget {
  const Introapp({super.key});

  @override
  Widget build(BuildContext context) {
    return
        MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Home(),
        );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.blue,
         title: Text("Listview gridview"),
       ),
      body: SingleChildScrollView(

  child:    Column(
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: Center(
              child: Text("Box 1"),
            ),
          ),
          SizedBox(
            height: 100,
            width: 100,
            child: Center(
              child: Text("Box 1"),
            ),
          ),SizedBox(
            height: 100,
            width: 100,
            child: Center(
              child: Text("Box 1"),
            ),
          ),SizedBox(
            height: 100,
            width: 100,
            child: Center(
              child: Text("Box 1"),
            ),
          ),SizedBox(
            height: 100,
            width: 100,
            child: Center(
              child: Text("Box 1"),
            ),
          ),SizedBox(
            height: 100,
            width: 100,
            child: Center(
              child: Text("Box 1"),
            ),
          ),SizedBox(
            height: 100,
            width: 100,
            child: Center(
              child: Text("Box 1"),
            ),
          ),
          SizedBox(
            height: 100,
            width: 100,
            child: Center(
              child: Text("Box 1"),
            ),
          ),
          SizedBox(
            height: 100,
            width: 100,
            child: Center(
              child: Text("Box 1"),
            ),
          ),SizedBox(
            height: 100,
            width: 100,
            child: Center(
              child: Text("Box 1"),
            ),
          ),SizedBox(
            height: 100,
            width: 100,
            child: Center(
              child: Text("Box 1"),
            ),
          ),SizedBox(
            height: 100,
            width: 100,
            child: Center(
              child: Text("Box 1"),
            ),
          ),SizedBox(
            height: 100,
            width: 100,
            child: Center(
              child: Text("Box 1"),
            ),
          ),SizedBox(
            height: 100,
            width: 100,
            child: Center(
              child: Text("Box 1"),
            ),
          ),SizedBox(
            height: 100,
            width: 100,
            child: Center(
              child: Text("Box 1"),
            ),
          ),SizedBox(
            height: 100,
            width: 100,
            child: Center(
              child: Text("Box 1"),
            ),
          ),SizedBox(
            height: 100,
            width: 100,
            child: Center(
              child: Text("Box 1"),
            ),
          ),SizedBox(
            height: 100,
            width: 100,
            child: Center(
              child: Text("Box 1"),
            ),
          ),
          SizedBox(
            height: 100,
            width: 100,
            child: Center(
              child: Text("Box 1"),
            ),
          ),
        ],
      ),
      ),
    );
  }
}
