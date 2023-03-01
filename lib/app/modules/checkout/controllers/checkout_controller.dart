import 'package:get/get.dart';

enum RadioButtonProfile { doorDelivery, pickUp }

class CheckoutController extends GetxController {
  final Rx<RadioButtonProfile> character = RadioButtonProfile.doorDelivery.obs;
  //TODO: Implement CheckoutController

  final count = 0.obs;

  void onClickRadio(value){
    character.value = value;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
