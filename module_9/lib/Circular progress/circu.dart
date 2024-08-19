


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:module_9/linear%20progress/linear.dart';

class circular extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("C I R C U L A R    P R O G R E S S",style: TextStyle(color: Colors.black),),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent[200],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CircularProgressIndicator(
                color: Colors.black,
                strokeWidth: 10,
              ),
            ),
            const SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>linear()) );
            }, child: Text("Go to linear progress"))
          ],
        )
    );
  }
}