
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTab;
  const MyButton({
    super.key,
    required this.text,
    required this.onTab
});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTab ,
      child: Container(
        decoration: BoxDecoration(color: Color.fromARGB(250, 100, 60, 55),borderRadius: BorderRadius.circular(40)),
        padding: EdgeInsets.all(20),
      
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //text
            Text(text,style: TextStyle(color: Colors.white),),
            const SizedBox(width: 10,),
            //icon
            Icon(Icons.arrow_forward,color: Colors.white,)
          ],
        ),
      ),
    );
  }
}
