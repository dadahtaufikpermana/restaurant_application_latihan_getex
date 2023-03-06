import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_application_latihan_getex/app/data/detail_product_service.dart';
import 'package:restaurant_application_latihan_getex/app/models/detail_product_models.dart';

class DetailFoodScreenController extends GetxController {

  final Rx<Color> iconColor = Colors.black26.obs;
  void onClickButton() {
    if (iconColor.value == Colors.black26) {
      iconColor.value = Colors.redAccent;
    } else {
      iconColor.value = Colors.black26;
    }
  }

  RxBool isLoading = false.obs;
  final mealDetailService = DetailProductService();
  String id = '';
  Rx<Meal?> detailMeal = Meal(idMeal: '').obs;

  @override
  void onInit() {
    super.onInit();
    final args = Get.arguments;
    id = args['id'];
    getDetailMealsItem();
  }

  getDetailMealsItem() async{
    isLoading(true);
    try{
      DetailProductModel response = await mealDetailService.getDetailMeals(id: id);
      var res = response.meals![0];
      detailMeal(res);
      isLoading(false);
    }
    catch(e){
      isLoading(false);
      print(e.toString());
      Get.snackbar('Error', e.toString());
    }
  }
}
