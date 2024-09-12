import 'package:flutter/cupertino.dart';
import 'package:practice_assignment_04/data/cart_model.dart';

class Cartdata extends ChangeNotifier {
  List<CartItem> cartitem = [
    CartItem(
        price: "200",
        size: 'f',
        color: "black",
        name: "soumitro",
        imagepath: 'images/12.png'),
    CartItem(
        price: "200",
        size: 'f',
        color: "black",
        name: "soumitro",
        imagepath: 'images/12.png'),
    CartItem(
        price: "200",
        size: 'f',
        color: "black",
        name: "soumitro",
        imagepath: 'images/12.png'),
    CartItem(
        price: "200",
        size: 'f',
        color: "black",
        name: "soumitro",
        imagepath: 'images/12.png'),
    CartItem(
        price: "200",
        size: 'f',
        color: "black",
        name: "soumitro",
        imagepath: 'images/12.png'),
    CartItem(
        price: "200",
        size: 'f',
        color: "black",
        name: "soumitro",
        imagepath: 'images/12.png'),
  ];

  Map<CartItem, int> _usercart = {};

  void addUserCart(CartItem cartItem) {
    if (_usercart.containsKey(cartItem)) {
      _usercart[cartItem] = _usercart[cartItem]! + 1;
    } else {
      _usercart[cartItem] = 1;
    }
    notifyListeners();
  }

  void removeUsercart(CartItem cartItem) {
    if (_usercart.containsKey(cartItem)) {
      if (_usercart[cartItem]! > 1) {
        _usercart[cartItem] = _usercart[cartItem]! - 1;
      } else {
        _usercart.remove(cartItem);
      }
    }
    notifyListeners();
  }

  Map<CartItem, int> get usercart => _usercart;

  int get totalPrice => _usercart.entries.fold(
      0, (sum, entry) => sum + (int.parse(entry.key.price) * entry.value));
}
