import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:skeletons/skeletons.dart';

import '../../../../shares/button_widget.dart';
import '../../../../shares/styleSchema.dart';
import '../../../routes/app_pages.dart';
import '../controllers/detail_food_screen_controller.dart';

class DetailFoodScreenView extends GetView<DetailFoodScreenController> {
  final detailFoodScreenController = Get.put(DetailFoodScreenController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: background,
        body: Obx(() =>
        controller.isLoading == true
             ? SkeletonListView():
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios_new,
                              size: 20,
                              color: Colors.black,
                            ),
                          ),
                          Expanded(
                            child: Obx(() => ListTile(
                              trailing: IconButton(
                                  icon: Icon(
                                    Icons.favorite,
                                    color: detailFoodScreenController.iconColor.value,
                                  ),
                                  onPressed: () {
                                    detailFoodScreenController.onClickButton();
                                  }),
                            ),),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                        height: 275,
                        width: 275,
                        child: Obx(() => Image(
                            image: NetworkImage(controller
                                .detailMeal
                                .value
                                .strMealThumb ??
                                '')))),
                    SizedBox(height: 45),
                    Obx(() => Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20),
                      child: Text(
                        controller
                            .detailMeal
                            .value
                            .strMeal ??
                            '',
                        style: TextStyle(
                            fontSize: 28,
                            fontFamily: 'SF Pro',
                            fontWeight: FontWeight.bold),
                      ),
                    ),),
                    Container(
                      padding: const EdgeInsets.only(top: 10),
                      child: const Text(
                        'N1,900',
                        style: TextStyle(
                            color: Color(0xffFA4A0C),
                            fontSize: 22,
                            fontFamily: 'SF Pro',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 21.5),
                            child: const Text(
                              'Delivery info',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 17,
                                  fontFamily: 'SF Pro',
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Obx(() => Text(controller
                              .detailMeal
                              .value
                              .strYoutube ??
                              ''),),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: const Text(
                              'Return policy',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 17,
                                  fontFamily: 'SF Pro',
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Obx(() => Text(controller
                              .detailMeal
                              .value
                              .strInstructions ??
                              ''),),

                          Padding(
                            padding: EdgeInsets.only(bottom: 20, top: 50),
                            child: ButtonWidget(textTitle: "Add to cart", screens: Routes.CART),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),),
      ),
    );
  }
}
