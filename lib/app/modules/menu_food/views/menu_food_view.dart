import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../shares/food_card_widget.dart';
import '../controllers/menu_food_controller.dart';

class MenuFoodView extends GetView<MenuFoodController> {
  const MenuFoodView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
          child: Icon( Icons.arrow_back_ios, color: Colors.black,  ),
        ),
        backgroundColor: Colors.white,
        title: Container(
          padding: const EdgeInsets.all(8),
          child: TextFormField(
            decoration:
            const InputDecoration(border: InputBorder.none, hintText: ""),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 30,
              margin: const EdgeInsets.only(top: 30.0),
              child: const Center(
                child: Text(
                  "Found 6 Result",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 45.0,
                top: 120.0,
              ),
              child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 50,
                children: [
                  FoodCard(
                    text: "Veggoe\nTomatto Mix",
                    imageUrl: 'assets/image/ic_food.png',
                  ),
                  FoodCard(
                    text: "Egg and\nCucumber..",
                    imageUrl: 'assets/image/ic_food3.png',
                  ),
                  FoodCard(
                    text: "Fried\nChicken m.",
                    imageUrl: 'assets/image/ic_food4.png',
                  ),
                  FoodCard(
                    text: "Moi-moi\nand Ekpa",
                    imageUrl: 'assets/image/ic_food5.png',
                  ),
                  FoodCard(
                    text: "Bakpau",
                    imageUrl: 'assets/image/ic_food5.png',
                  ),
                  FoodCard(
                    text: "chuankie",
                    imageUrl: 'assets/image/ic_food5.png',
                  ),
                  FoodCard(
                    text: "Veggoe\nTomatto Mix",
                    imageUrl: 'assets/image/ic_food.png',
                  ),
                  FoodCard(
                    text: "Egg and\nCucumber..",
                    imageUrl: 'assets/image/ic_food3.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
