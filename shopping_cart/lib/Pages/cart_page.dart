import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Import Provider package
import 'package:shopping_cart/Pages/product.dart';
import 'package:shopping_cart/model%20data/cart_data.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartData(),
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
        body: Consumer<CartData>(
          builder: (context, cartData, child) {
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount:
                        cartData.cart.length, // Number of items in the cart
                    itemBuilder: (context, index) {
                      final cartItem = cartData.cart[index];
                      // Accessing the CartItem at the current index

                      return CartItemContainer(
                        cartItem: cartItem,
                        cartData: cartData,
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
