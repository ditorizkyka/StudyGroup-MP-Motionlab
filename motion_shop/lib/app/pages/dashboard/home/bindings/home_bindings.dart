import 'package:get/get.dart';
import 'package:motion_shop/app/pages/dashboard/home/controller/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
