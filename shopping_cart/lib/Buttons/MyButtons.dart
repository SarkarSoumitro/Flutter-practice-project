import 'package:flutter/material.dart';

class Mybuttons extends StatelessWidget {
  final icons;
  void Function()? onTap;
  Mybuttons({super.key, required this.icons, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.transparent),
        child: Icon(
          icons,
          size: 40,
        ),
      ),
    );
  }
}
