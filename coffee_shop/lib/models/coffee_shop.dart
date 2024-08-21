import 'package:coffee_shop/models/coffee.dart';
import 'package:flutter/cupertino.dart';

class coffeeshop extends ChangeNotifier {
  //coffee for sale list
  List<coffee> _shop = [
    // black coffee
    coffee(imagePath: "images/coffee.png", name: "Black", price: "344"),

    // latte
    coffee(imagePath: "images/latte.png", name: "Latte", price: "344"),

    // espresso
    coffee(imagePath: "images/expresso.png", name: "Espresso", price: "344"),

    //iced coffee
    coffee(
        imagePath: "images/iced-coffee.png", name: "Iced Coffee", price: "344"),

    // black coffee
    coffee(imagePath: "images/coffee.png", name: "Black", price: "344"),

    // latte
    coffee(imagePath: "images/latte.png", name: "Latte", price: "344"),

    // espresso
    coffee(imagePath: "images/expresso.png", name: "Espresso", price: "344"),

    //iced coffee
    coffee(
        imagePath: "images/iced-coffee.png", name: "Iced Coffee", price: "344"),
  ];

  // user cart
  List<coffee> _usercart = [];

  //get coffee list
  List<coffee> get coffeeShop => _shop;

  // get user cart
  List<coffee> get userCart => _usercart;
  //adding item to the cart
  void addItem(coffee coffee) {
    _usercart.add(coffee);
    notifyListeners();
  }

  // removing item to the cart
  void removeItem(coffee coffee) {
    _usercart.remove(coffee);
    notifyListeners();
  }
}
