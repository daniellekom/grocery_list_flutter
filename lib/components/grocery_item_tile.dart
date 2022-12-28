import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {
  //what seperates the items?
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final color;

  const GroceryItemTile(
      {super.key, required this.itemName, required this.itemPrice, required this.imagePath, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //image
            Image.asset(
              imagePath,
              height: 64,
            ),
            //item name
            Text(itemName),

            //price + button
            MaterialButton(
              onPressed: () {},
              color: color,
              child: Text(
               '\$'+ itemPrice,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
