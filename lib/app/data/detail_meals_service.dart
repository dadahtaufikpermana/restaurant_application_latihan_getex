import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../models/detail_meals_models.dart';

class DetailMealsService {
  final _connect = Get.find<GetConnect>();

  Future<DetailMealsModel> getDetailMeals({required String id}) async {
    final response = await _connect.get('1/lookup.php?i=$id',
        decoder: (data) => DetailMealsModel.fromJson(data as Map<String, dynamic>));
    if (!response.hasError) {
      return response.body!;
    } else {
      throw Get.snackbar('Error', response.statusCode.toString());
    }
  }
}