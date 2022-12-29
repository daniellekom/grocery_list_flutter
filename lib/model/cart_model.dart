import 'package:flutter/material.dart';


class CartModel extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = [
    // [ itemName, itemPrice, imagePath, color ]
    ['avocado', '4.00', 'lib/images/avocado.png', Colors.green],
    ['banana', '1.50', 'lib/images/banana.png', Colors.yellow],
    ['chicken', '12.99', 'lib/images/chicken.png', Colors.brown],
    ['water', '2.00', 'lib/images/water.png', Colors.blue],
  ];


  // list of cart items
  List _cartItems = [];

  get shopItems => _shopItems;
  get cartItems => _cartItems;

  // add item to cart
    void addItemToCart(int index){
      _cartItems.add(_shopItems[index]);
      notifyListeners();
    }
 // remove item from cart
    void removeItemFromCart(int index){
      _cartItems.removeAt(_shopItems[index]);
      notifyListeners();
    }
// calculate total price string bc u want to return a value
  String calculateTotal(){
    double totalPrice = 0;
    for(int i = 0; i < _cartItems.length; i++){
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}