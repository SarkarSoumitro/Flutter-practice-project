import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomBar extends StatelessWidget {
  void Function(int)? onTabChange;
   MyBottomBar({super.key,required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return GNav(
      onTabChange: (value) => onTabChange!(value),
        color: Colors.grey[400],
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.grey[700],
        tabBackgroundColor: Colors.grey.shade300,
        tabBorderRadius: 24,
        tabActiveBorder: Border.all(color: Colors.white),
        tabs: [
          GButton(
            icon: Icons.home,
            text: "Home",
          ),
          GButton(
            icon: Icons.shopping_bag_outlined,
            text: "Cart",
          )
        ]);
  }
}