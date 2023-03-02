import 'package:get/get.dart';

import '../controllers/menu_food_controller.dart';

class MenuFoodBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MenuFoodController>(
      () => MenuFoodController(),
    );
  }
}
