import 'package:flutter/material.dart';
import 'package:navigation/components/Mybutton.dart';

import '../main.dart';

class Page_2 extends StatelessWidget {
  const Page_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        centerTitle: true,
        title: Text("N A V I G A T I O N"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          //back button
          Mybutton(
              buttonname: "B A C K TO H O M E",
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => New()));
              })
          //back button 2
        ],
      ),
    );
  }
}
