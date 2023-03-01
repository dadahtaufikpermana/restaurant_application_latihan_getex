import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashScreen>(
          () => SplashScreen(),
    );
  }
}
