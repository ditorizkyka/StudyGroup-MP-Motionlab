import 'package:get/get.dart';
import 'package:motion_shop/app/pages/auth/auth_login/login_page.dart';
import 'package:motion_shop/app/pages/auth/auth_register/register_page.dart';
import 'package:motion_shop/app/pages/cart/cart_page.dart';
import 'package:motion_shop/app/pages/dashboard/home/bindings/home_bindings.dart';
import 'package:motion_shop/app/pages/dashboard/favorite/favorite_page.dart';
import 'package:motion_shop/app/pages/dashboard/home/home_page.dart';
import 'package:motion_shop/app/pages/dashboard/navigation_bar.dart';
import 'package:motion_shop/app/pages/dashboard/profile/profile_page.dart';
import 'package:motion_shop/app/pages/invoice_success/invoice_success_page.dart';
import 'package:motion_shop/app/pages/product/product_page.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginPage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterPage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT,
      page: () => const ProductPage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => const CartPage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.INVOICE,
      page: () => const InvoiceSuccessPage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.NAV,
      page: () => const NavigationBar(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.FAVORITE,
      page: () => const FavoritePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfilePage(),
      binding: HomeBinding(),
    ),
  ];
}
