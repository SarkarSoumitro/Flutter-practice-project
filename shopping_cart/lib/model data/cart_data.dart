import 'package:flutter/material.dart';
import 'package:shopping_cart/model%20data/cart_model.dart';

class CartData extends ChangeNotifier {
  List<CartItem> cart = [
    CartItem(
        imagePath: 'images/shirt.png',
        price: "200",
        name: 'pollover',
        color: 'grey',
        size: 'L'),
    CartItem(
        imagePath: 'images/12.png',
        price: "200",
        name: 'Urban',
        color: 'grey',
        size: 'L'),
    CartItem(
        imagePath: 'images/13.png',
        price: "200",
        name: 'Vibrant',
        color: 'grey',
        size: 'L'),
    CartItem(
        imagePath: 'images/14.png',
        price: "200",
        name: 'Cozy',
        color: 'grey',
        size: 'L'),
    CartItem(
        imagePath: 'images/15.png',
        price: "200",
        name: 'pollover',
        color: 'grey',
        size: 'L'),
    // Other items...
  ];

  Map<CartItem, int> _userCart = {}; // Use a map to track quantities

  void addUserCart(CartItem cartItem) {
    if (_userCart.containsKey(cartItem)) {
      _userCart[cartItem] = _userCart[cartItem]! + 1;
    } else {
      _userCart[cartItem] = 1;
    }
    notifyListeners();
  }

  void removeUserCart(CartItem cartItem) {
    if (_userCart.containsKey(cartItem)) {
      if (_userCart[cartItem]! > 1) {
        _userCart[cartItem] = _userCart[cartItem]! - 1;
      } else {
        _userCart.remove(cartItem);
      }
      notifyListeners();
    }
  }

  Map<CartItem, int> get userCart => _userCart;

  int get totalPrice => _userCart.entries.fold(
      0, (sum, entry) => sum + (int.parse(entry.key.price) * entry.value));
}
