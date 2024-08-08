
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_practice/components/button.dart';
import 'package:ui_practice/model/food.dart';
import '../colors/colors.dart';
import '../components/food_tile.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

  List Foodmenu =[
    //salmon sushi
    food(imagePath: 'images/sushi.png', name: 'salmon sushi', price: '78', rating: '9/10'),
    //tuna sushi
    food(imagePath: 'images/one.png', name: 'tuna sushi', price: '87', rating: '9/10'),

    food(imagePath: 'images/new.png', name: 'salmon sushi', price: '78', rating: '9/10'),
    food(imagePath: 'images/sushi.png', name: 'salmon sushi', price: '78', rating: '9/10'),
    food(imagePath: 'images/sushi.png', name: 'salmon sushi', price: '78', rating: '9/10'),
    food(imagePath: 'images/sushi.png', name: 'salmon sushi', price: '78', rating: '9/10'),
    food(imagePath: 'images/sushi.png', name: 'salmon sushi', price: '78', rating: '9/10'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Center(child: Text("Tokyo",style: TextStyle(color: Colors.grey[900]),)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //primary banner
          Container(
            decoration: BoxDecoration(color: primarycolors, borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //promo message
                Column(
                  children: [
                    Text("Get 20% discount", style: GoogleFonts.dmSerifDisplay(fontSize: 20, color: Colors.white)),
                    const SizedBox(height: 20,),
                    //redeem button
                    MyButton(text:"Redeem", onTab: (){}),
                  ],
                ),
                //image will be here
                Image.asset('images/sushi.png', width: 110), // Set a maximum width for the image
              ],
            ),
          ),
          const SizedBox(height: 10,),
          //search bar
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(hintText:"Salmon sushi",border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(20)
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.white)
              )
              ),
            ),
          ),

          const SizedBox(height: 25,),
          //menu list
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text("Food Menu",style: TextStyle(
              color: Colors.grey[800],
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),),
          ),
          const SizedBox(height: 20,),
          
          Expanded(child:
          ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Foodmenu.length,
              itemBuilder:
                  (context, index)=> FoodTile(
                    foood: Foodmenu[index],
                  ),
          ),
          ),
          const SizedBox(height: 25),

          //popular food
          Container(
            margin: EdgeInsets.only(left: 25,right: 25,bottom: 25),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(25)
            ),
            child: Row(
              children: [
                Image.asset('images/one.png',height: 75,),
                const SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //name of the popular item
                    Text("sushi eggs",style: GoogleFonts.dmSerifDisplay(fontSize: 18),),
                    
                    //price of the popular item
                    Text("\$ 25",style: GoogleFonts.dmSerifDisplay(fontSize: 18),)
                    
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
