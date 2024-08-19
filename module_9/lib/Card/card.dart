
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:module_9/Circular%20progress/circu.dart';

class card extends StatelessWidget {
  const card({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("C A R D"),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent[200],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              elevation: 80,
              color: Colors.green[300],
              shadowColor: Colors.orange[100],
              child: SizedBox(
                height: 200,
                width: 200,
                child: Center(
                  child: Text("I AM BOX HERE"),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => circular()));
          }, child: Text("Go to circular progress"))
        ],
      ),
    );
  }
}
