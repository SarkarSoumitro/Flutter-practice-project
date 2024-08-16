import 'package:coffee_shop/components/bottom_nav.dart';
import 'package:coffee_shop/const.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      bottomNavigationBar: MyBottomBar(),
    );
  }
}
