

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:module_9/Card/card.dart';

class ac1 extends StatelessWidget {
  const ac1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("A C T I V I T Y  1",style: TextStyle(color: Colors.white),),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent[200],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ac2(msg: '"Comming from home"',)));
              }, child: Text("Go to activity 2"))
            ],
          ),
        )
    );
  }
}

class ac2 extends StatelessWidget {
  String msg;
  ac2({super.key,required this.msg});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("A C T I V I T Y  2",style: TextStyle(color: Colors.white),),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent[200],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(msg),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => card()));
              }, child: Text("Go to Card"))
            ],
          ),
        )
    );
  }
}

