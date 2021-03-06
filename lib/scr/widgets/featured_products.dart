import 'package:Bakery_App/scr/models/products.dart';
import 'package:flutter/material.dart';

import '../commons.dart';
import 'custom_text.dart';

List<Product> productsList = [
  Product(
      name: "Cereals",
      price: 250,
      rating: 4.1,
      vendor: "GoodFoods",
      wishList: true,
      image: "plate1.jpg"),
  Product(
      name: "Mix Rice",
      price: 350,
      rating: 4.7,
      vendor: "GoodFoods",
      wishList: false,
      image: "plate2.jpg"),
  Product(
      name: "Normal Rice",
      price: 150,
      rating: 4.5,
      vendor: "GoodFoods",
      wishList: true,
      image: "plate.jpg"),
];

class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productsList.length,
          itemBuilder: (_, index) {
            return Padding(
                padding: EdgeInsets.all(8),
                child: Container(
                  height: 240,
                  width: 200,
                  decoration: BoxDecoration(color: white, boxShadow: [
                    BoxShadow(
                      color: Colors.red.shade50,
                      offset: Offset(15, 5),
                      blurRadius: 20,
                    )
                  ]),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "images/${productsList[index].image}",
                        height: 140,
                        width: 140,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(
                              text: productsList[index].name,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: grey,
                                      offset: Offset(1, 1),
                                      blurRadius: 4,
                                    )
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.all(4),
                                child: productsList[index].wishList
                                    ? Icon(
                                        Icons.favorite_border,
                                        color: red,
                                        size: 18,
                                      )
                                    : Icon(
                                        Icons.favorite_border,
                                        color: red,
                                        size: 18,
                                      ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: CustomText(
                                  text: productsList[index].rating.toString(),
                                  color: grey,
                                  size: 14,
                                ),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Icon(
                                Icons.star,
                                color: red,
                                size: 16,
                              ),
                              Icon(
                                Icons.star,
                                color: red,
                                size: 16,
                              ),
                              Icon(
                                Icons.star,
                                color: red,
                                size: 16,
                              ),
                              Icon(
                                Icons.star,
                                color: red,
                                size: 16,
                              ),
                              Icon(
                                Icons.star,
                                color: grey,
                                size: 16,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: CustomText(
                              text: "\Rs${productsList[index].price}",
                              weight: FontWeight.bold,
                              size: 15,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ));
          }),
    );
  }
}
