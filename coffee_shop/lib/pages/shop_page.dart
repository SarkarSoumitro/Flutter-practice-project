import 'package:coffee_shop/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/coffee_tile.dart';
import '../models/coffee.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //add to cart
  void addtocart(coffee coffeee) {
    Provider.of<coffeeshop>(context, listen: false).addItem(coffeee);
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("succcefully added"),
            ));
  }

  //show dialog for suggessfull add

  @override
  Widget build(BuildContext context) {
    return Consumer<coffeeshop>(
        builder: (context, value, child) => SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    Text(
                      "What would you like coffee",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Expanded(
                        child: ListView.builder(
                            itemCount: value.coffeeShop.length,
                            itemBuilder: (context, index) {
                              coffee eachcoffee = value.coffeeShop[index];
                              return CoffeeTile(
                                coffeee: eachcoffee,
                                icons: Icon(Icons.add),
                                onPressed: () => addtocart(eachcoffee),
                              );
                            }))
                  ],
                ),
              ),
            ));
  }
}
