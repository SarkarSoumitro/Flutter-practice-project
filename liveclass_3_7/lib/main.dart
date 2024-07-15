

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//image , materialapp , scafold, buttons , icons (ElevatedButton , IcondButton)

main(){
  runApp(introapp());
}


class introapp extends StatelessWidget{
  const introapp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: Home(),
      title: "intro app",
    );
  }

}



class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        // child: Icon(
        //   Icons.tablet_android,
        //   size: 50,
        //   color: Colors.white,
        // )
           // child: Image.network(""),
        // child: Image.asset("assets/image/ronaldo.jpeg",
        //   width: 500,
        //   height: 200,
        //   fit: BoxFit.fitHeight,
        // ),
        // child: ElevatedButton(
        //   onPressed: (){
        //     print("button pressed");
        //   },
        //   child: Text("Notification"),
        // ),
        // child: IconButton(
        //   onPressed: (){
        //     print("add");
        //   },
        //   icon: Icon(Icons.add),
        // ),
        // child: TextButton(
        //   onPressed: (){
        //     print("Button pressed");
        //   },
        //   child: Text("Text button"),
        // ),
        // child: GestureDetector(
        //   onTap: (){
        //     print("single tap");
        //   },
        //   onDoubleTap: (){
        //     print("double tap");
        //   },
        // ),
        child: InkWell(
          onTap: (){
            print("single tap");
          },
          onDoubleTap: (){
            print("double tap");
          },
          child: Text("normal text"),
        ),
      ),
    );
  }
}
