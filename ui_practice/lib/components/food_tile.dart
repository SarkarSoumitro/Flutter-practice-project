

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/food.dart';

class FoodTile extends StatelessWidget {
  final food foood;
  const FoodTile({
    super.key,
    required this.foood
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //image
          Image.asset(foood.imagePath,
          height: 140,
          ),
          
          //text
          Text(foood.name,
            style: GoogleFonts.dmSerifDisplay(fontSize: 20),
          ),
          
          //price+rating
          SizedBox(
            width: 160,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //price
                Text("\$"+foood.price),
                
                //rating
                Row(
                  children: [
                    Icon(Icons.star,color: Colors.yellow[800],),
                    Text(foood.rating,style:
                    TextStyle(color: Colors.grey),),
                  ],
                )
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
