

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(
    introApp()
  );
}

class introApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Home"),
        ) ,
        body: Center(
          child: Text("hello ostad , we have faced a huge problem . Now we need to solve this problem",
            textAlign: TextAlign.start,
            maxLines: 2,
               style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                letterSpacing: 1,
                wordSpacing: 1,
                overflow: TextOverflow.ellipsis
          ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

}