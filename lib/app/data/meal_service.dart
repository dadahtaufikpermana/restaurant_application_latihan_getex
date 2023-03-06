import 'package:get/get.dart';
import 'package:get/get_connect/connect.dart';
import 'package:get/get_core/src/get_main.dart';

import '../models/meal_models.dart';

class MealService {
  final _connect = Get.find<GetConnect>();

  Future<Meals> getMeals() async {
    final response = await _connect.get('1/filter.php?c=Seafood',
        decoder: (data) => Meals.fromJson(data as Map<String, dynamic>));
    if (!response.hasError) {
      return response.body!;
    } else {
      throw Get.snackbar('Error', response.statusCode.toString());
    }
  }
}