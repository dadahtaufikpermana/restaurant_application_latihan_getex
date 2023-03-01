import 'package:get/get.dart';
import 'package:restaurant_application_latihan_getex/app/modules/home/controllers/home_controller.dart';
import '../modules/home/bindings/splash_binding.dart';
import '../modules/home/views/splash_screen.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
  ];
}
