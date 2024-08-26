import 'package:flutter/material.dart';

class Listtiles extends StatelessWidget {
  final imagepath;
  final String tilename;
  final String tiledescription;
  const Listtiles(
      {super.key,
      required this.imagepath,
      required this.tiledescription,
      required this.tilename});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 80,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(12)),
              child: Image.asset(imagepath),
            ),
            Column(children: [
              Text(
                tilename,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                tiledescription,
                style: TextStyle(fontSize: 16),
              )
            ]),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}
