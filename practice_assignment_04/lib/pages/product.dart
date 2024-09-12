import 'package:flutter/material.dart';
import 'package:practice_assignment_04/data/cart_data.dart';
import 'package:practice_assignment_04/data/cart_model.dart';

import '../Buttons/MyButtons.dart';
import '../Buttons/Mybuttons_remove.dart';

class CartItemContainer extends StatefulWidget {
  final Cartdata cartdata;
  final CartItem cartItem;

  const CartItemContainer({
    super.key,
    required this.cartdata,
    required this.cartItem,
  });

  @override
  State<CartItemContainer> createState() => _CartItemContainerState();
}

class _CartItemContainerState extends State<CartItemContainer> {
  @override
  Widget build(BuildContext context) {
    int count = widget.cartdata.usercart[widget.cartItem] ?? 0;

    return Container(
      height: 200,
      width: double.infinity,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade600,
              blurRadius: 10,
              spreadRadius: 1,
              offset: Offset(4.0, 4.0),
            ),
            BoxShadow(
                color: Colors.white,
                blurRadius: 10,
                spreadRadius: 1,
                offset: Offset(-4.0, -4.0))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // image
          Image.asset(
            widget.cartItem.imagepath,
            height: 180,
            width: 100,
          ),

          //a column where product name, color,size will be
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
                          widget.cartdata.removeUsercart(widget.cartItem);
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
                        widget.cartdata.addUserCart(widget.cartItem);
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 5),
            ],
          ),

          //a column where three dot and price will be shown
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
