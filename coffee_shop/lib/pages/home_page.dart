import 'package:coffee_shop/components/bottom_nav.dart';
import 'package:coffee_shop/const.dart';
import 'package:coffee_shop/pages/cart_page.dart';
import 'package:coffee_shop/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //navigate bottom nav bar
  int _selectedindex = 0;
  void NavigateBottombar(int index){
    setState(() {
      _selectedindex = index;
    });
  }

  //create pages
  List<Widget> pages = [
    //shop pages
    ShopPage(),

    // cart pages
    CartPage()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      bottomNavigationBar: MyBottomBar(
          onTabChange: (index) => NavigateBottombar(index)
    ),
      body: pages[_selectedindex],
    );
  }
}
