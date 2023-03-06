import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../shares/food_card_widget.dart';
import '../controllers/menu_food_controller.dart';

class MenuFoodView extends GetView<MenuFoodController> {
  MenuFoodController checkoutController = Get.put(MenuFoodController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: Container(
          padding: const EdgeInsets.all(8),
          child: TextField(
            decoration:
                const InputDecoration(border: InputBorder.none),
            onSubmitted: (value) => controller.getSearchMeals(value),
          ),
        ),
      ),
      body: Obx(() =>  SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 30,
              margin: const EdgeInsets.only(top: 30.0),
              child:  Center(
                child: Text(
                  "Found ${controller.searchMealItem.length} Result",
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
                  ...controller.searchMealItem.map(
                        (item) {
                      return FoodCard(
                        imageUrl: item.strMealThumb,
                        title: item.strMeal,
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ), ),
    );
  }
}
