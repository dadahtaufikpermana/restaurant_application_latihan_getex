import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:logger/logger.dart';
import '../../../data/search_service.dart';
import '../../../models/meal_search_model.dart';

class MenuFoodController extends GetxController {
  RxBool isLoading = false.obs;
  RxList<Meal> searchMealItem = <Meal>[].obs;
  final mealSearchService = SearchService();
  var searchText = <Meal>[].obs;
  RxString searchParams = ''.obs;

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> getSearchMeals(String value) async {
    isLoading(true);
    searchMealItem.clear();
    value.toLowerCase();
    try {
      SearchMealsModel responseSearch =
          await mealSearchService.getSearchMeals(value);
      searchMealItem.addAll(responseSearch.meals);
      Logger().d(responseSearch.meals.first.idMeal);
      isLoading(false);
    } catch (e) {
      isLoading(false);
      // Get.snackbar('Error', e.toString());
    }
  }
}
