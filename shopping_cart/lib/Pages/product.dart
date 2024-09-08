import 'package:flutter/material.dart';
import 'package:shopping_cart/Buttons/MyButtons.dart';
import 'package:shopping_cart/model%20data/cart_data.dart';
import 'package:shopping_cart/model%20data/cart_model.dart';

import '../Buttons/Mybuttons_remove.dart';

class CartItemContainer extends StatefulWidget {
  final CartItem cartItem;
  final CartData cartData;

  const CartItemContainer({
    required this.cartItem,
    required this.cartData,
    Key? key,
  }) : super(key: key);

  @override
  State<CartItemContainer> createState() => _CartItemContainerState();
}

class _CartItemContainerState extends State<CartItemContainer> {
  @override
  Widget build(BuildContext context) {
    // Get the quantity of the current item
    int count = widget.cartData.userCart[widget.cartItem] ?? 0;

    return Container(
      margin: EdgeInsets.all(20),
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade600,
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(4.0, 4.0),
          ),
          BoxShadow(
            color: Colors.white,
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(-4.0, -4.0),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            widget.cartItem.imagePath,
            height: 160,
            width: 160,
          ),
          const SizedBox(width: 0),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                widget.cartItem.name,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text(
                    "Color: ${widget.cartItem.color}",
                    style: TextStyle(fontSize: 15),
                  ),
                  const SizedBox(width: 15),
                  Text(
                    "Size: ${widget.cartItem.size}",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Minus button
                  Mybuttons(
                    icons: Icons.remove_circle,
                    onTap: () {
                      if (count > 0) {
                        setState(() {
                          widget.cartData.removeUserCart(widget.cartItem);
                        });
                      }
                    },
                  ),
                  const SizedBox(width: 10),
                  // Number of items
                  Text('$count'),
                  const SizedBox(width: 10),
                  // Add button
                  Mybuttonss(
                    icons: Icons.add_circle,
                    onTap: () {
                      setState(() {
                        widget.cartData.addUserCart(widget.cartItem);
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 5),
            ],
          ),
          const SizedBox(width: 20),
          // Three dots and price
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  ":",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 100),
                Text(
                  widget.cartItem.price,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
