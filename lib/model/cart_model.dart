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

  get shopItems => _shopItems;
}