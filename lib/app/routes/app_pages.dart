import 'package:get/get.dart';

import 'package:restaurant_application_latihan_getex/app/modules/detail_food_screen/bindings/detail_food_screen_binding.dart';
import 'package:restaurant_application_latihan_getex/app/modules/detail_food_screen/views/detail_food_screen_view.dart';

import '../modules/auth/login/bindings/login_binding.dart';
import '../modules/auth/login/views/login_view.dart';
import '../modules/auth/signUp/bindings/sign_up_binding.dart';
import '../modules/auth/signUp/views/sign_up_view.dart';
import '../modules/auth/tabControler/bindings/tab_controler_binding.dart';
import '../modules/auth/tabControler/views/tab_controler_view.dart';
import '../modules/cart/bindings/cart_binding.dart';
import '../modules/cart/views/cart_view.dart';
import '../modules/checkout/bindings/checkout_binding.dart';
import '../modules/checkout/views/checkout_view.dart';
import '../modules/history/bindings/history_binding.dart';
import '../modules/history/views/history_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/menu_food/bindings/menu_food_binding.dart';
import '../modules/menu_food/views/menu_food_view.dart';
import '../modules/network/bindings/network_binding.dart';
import '../modules/network/views/network_view.dart';
import '../modules/no_offer/bindings/no_offer_binding.dart';
import '../modules/no_offer/views/no_offer_view.dart';
import '../modules/order/bindings/order_binding.dart';
import '../modules/order/views/order_view.dart';
import '../modules/payment/bindings/payment_binding.dart';
import '../modules/payment/views/payment_view.dart';
import '../modules/profile/profile/bindings/profile_binding.dart';
import '../modules/profile/profile/views/profile_view.dart';
import '../modules/profile/profile_change/bindings/profile_change_binding.dart';
import '../modules/profile/profile_change/views/profile_change_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.MENU_FOOD,
      page: () => const MenuFoodView(),
      binding: MenuFoodBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
      children: [
        GetPage(
          name: _Paths.LOGIN,
          page: () => const LoginView(),
          binding: LoginBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.HISTORY,
      page: () => const HistoryView(),
      binding: HistoryBinding(),
    ),
    GetPage(
      name: _Paths.NETWORK,
      page: () => const NetworkView(),
      binding: NetworkBinding(),
    ),
    GetPage(
      name: _Paths.NO_OFFER,
      page: () => const NoOfferView(),
      binding: NoOfferBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.TAB_CONTROLER,
      page: () => TabControlerView(),
      binding: TabControlerBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.CHECKOUT,
      page: () => CheckoutView(),
      binding: CheckoutBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT,
      page: () => PaymentView(),
      binding: PaymentBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_CHANGE,
      page: () => ProfileChangeView(),
      binding: ProfileChangeBinding(),
    ),
    GetPage(
      name: _Paths.ORDER,
      page: () => const OrderView(),
      binding: OrderBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_FOOD_SCREEN,
      page: () => DetailFoodScreenView(),
      binding: DetailFoodScreenBinding(),
    ),
  ];
}
