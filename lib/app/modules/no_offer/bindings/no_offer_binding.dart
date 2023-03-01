import 'package:get/get.dart';

import '../controllers/no_offer_controller.dart';

class NoOfferBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NoOfferController>(
      () => NoOfferController(),
    );
  }
}
