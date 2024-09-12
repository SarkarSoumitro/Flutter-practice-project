import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:practice_assignment_04/data/cart_data.dart';
import 'package:practice_assignment_04/pages/product.dart';
import 'package:provider/provider.dart';

class cartpage extends StatefulWidget {
  const cartpage({super.key});

  @override
  State<cartpage> createState() => _cartpageState();
}

class _cartpageState extends State<cartpage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cartdata(),
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          flexibleSpace: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                color: Colors.transparent,
              ),
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white.withAlpha(200),
          elevation: 10,
          title: const Text(
            "Home",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        body: Consumer<Cartdata>(
          builder: (context, cartData, child) {
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount:
                        cartData.cartitem.length, // Number of items in the cart
                    itemBuilder: (context, index) {
                      final cartItem = cartData.cartitem[index];
                      // Accessing the CartItem at the current index

                      return CartItemContainer(
                        cartItem: cartItem,
                        cartdata: cartData,
                      );
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 11),
                  height: 110,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.grey[300]),
                  child: Column(
                    children: [
                      // Row for the total price
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total amount:",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            '${cartData.totalPrice}',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(18)),
                        child: Center(
                            child: Text(
                          "Check out now",
                          style: TextStyle(fontSize: 22),
                        )),
                      )
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
