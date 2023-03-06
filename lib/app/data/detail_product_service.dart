import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../models/detail_product_models.dart';

class DetailProductService {
  final _connect = Get.find<GetConnect>();

  Future<DetailProductModel> getDetailMeals({required String id}) async {
    final response = await _connect.get('1/lookup.php?i=$id',
        decoder: (data) => DetailProductModel.fromJson(data as Map<String, dynamic>));
    if (!response.hasError) {
      return response.body!;
    } else {
      throw Get.snackbar('Error', response.statusCode.toString());
    }
  }
}