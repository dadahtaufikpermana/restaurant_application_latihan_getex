import 'package:get/get.dart';

enum RadioButtonProfile { cardProfile, bankAccountProfile, paypalProfile }

class ProfileChangeController extends GetxController {

  final Rx<RadioButtonProfile> character = RadioButtonProfile.cardProfile.obs;

  void onClickProfile(value){
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
}
