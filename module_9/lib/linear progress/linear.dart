

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class linear extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("A C T I V I T Y  1",style: TextStyle(color: Colors.white),),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent[200],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: LinearProgressIndicator(
                minHeight: 10,
              ),
            ),
            ElevatedButton(onPressed: (){}, child: Text("Go to "))
          ],
        )
    );
  }
}