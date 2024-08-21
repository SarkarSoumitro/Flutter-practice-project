import 'package:coffee_shop/components/coffee_tile.dart';
import 'package:coffee_shop/models/coffee.dart';
import 'package:coffee_shop/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  //remove item from cart
  void removefromcart(coffee coffee) {
    Provider.of<coffeeshop>(context, listen: false).removeItem(coffee);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<coffeeshop>(
        builder: (context, value, child) => SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    //heading
                    Text(
                      "Your cart",
                      style: TextStyle(fontSize: 20),
                    ),

                    //expanded list
                    Expanded(
                        child: ListView.builder(
                            itemCount: value.userCart.length,
                            itemBuilder: (context, index) {
                              coffee eachcoffee = value.userCart[index];
                              return CoffeeTile(
                                  coffeee: eachcoffee,
                                  onPressed: () => removefromcart(eachcoffee),
                                  icons: Icon(Icons.delete));
                            }))
                  ],
                ),
              ),
            ));
  }
}
