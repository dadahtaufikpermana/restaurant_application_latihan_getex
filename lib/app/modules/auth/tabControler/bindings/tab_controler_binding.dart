import 'package:get/get.dart';

import '../controllers/tab_controler_controller.dart';

class TabControlerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TabControlerController>(
      () => TabControlerController(),
    );
  }
}
