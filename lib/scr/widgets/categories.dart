import 'package:Bakery_App/scr/models/category.dart';
import 'package:flutter/material.dart';

import '../commons.dart';
import 'custom_text.dart';

List<Category> categoriesList = [
  Category(name: "Burger", image: "burger1.png"),
  Category(name: "Pizza", image: "pizza.png"),
  Category(name: "Food", image: "food.png"),
  Category(name: "Burger", image: "burger2.png"),
  Category(name: "Burger", image: "burger.png"),
  Category(name: "French Fries", image: "french-fries.png"),
  Category(name: "Chicken", image: "chicken.png"),
  Category(name: "Ramen", image: "ramen.png"),
  Category(name: "Buns", image: "groceries.png"),
  Category(name: "Cake", image: "cake.png"),
  Category(name: "Harvest", image: "harvest.png"),
];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red.shade50,
                        offset: Offset(4, 6),
                        blurRadius: 20,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(4),
                    child: Image.asset(
                      "images/${categoriesList[index].image}",
                      width: 50,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomText(
                  text: categoriesList[index].name,
                  size: 14,
                  color: Colors.black,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
