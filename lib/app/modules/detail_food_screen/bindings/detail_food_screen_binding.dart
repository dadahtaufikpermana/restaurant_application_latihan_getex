import 'package:get/get.dart';

import '../controllers/detail_food_screen_controller.dart';

class DetailFoodScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailFoodScreenController>(
      () => DetailFoodScreenController(),
    );
  }
}
