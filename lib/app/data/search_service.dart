import 'package:get/get.dart';
import 'package:get/get_connect/connect.dart';
import 'package:get/get_core/src/get_main.dart';

import '../models/meal_search_model.dart';

class SearchService {
  final _connect = Get.find<GetConnect>();

  Future<SearchMealsModel> getSearchMeals(String searchParams) async {
    final response = await _connect.get('1/search.php?s=$searchParams',
        decoder: (data) =>
            SearchMealsModel.fromJson(data as Map<String, dynamic>));
    if (!response.hasError) {
      return response.body!;
    } else {
      throw Get.snackbar('Error', response.statusCode.toString(), duration: Duration(seconds: 100));
    }
  }
}