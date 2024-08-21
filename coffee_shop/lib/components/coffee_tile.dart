import 'package:coffee_shop/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final coffee coffeee;
  final void Function()? onPressed;
  final Widget icons;
  const CoffeeTile(
      {super.key,
      required this.coffeee,
      required this.onPressed,
      required this.icons});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(13)),
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: ListTile(
        title: Text(coffeee.name),
        subtitle: Text(coffeee.price),
        leading: Image.asset(coffeee.imagePath),
        trailing: IconButton(
          onPressed: onPressed,
          icon: icons,
        ),
      ),
    );
  }
}
