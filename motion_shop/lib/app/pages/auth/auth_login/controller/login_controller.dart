import 'package:get/get.dart';
import 'package:hive/hive.dart';

class LoginController extends GetxController {
  var username = ''.obs;
  var password = ''.obs;
  RxBool isLoadingLoginPage = true.obs;

  login() async {
    // ignore: unrelated_type_equality_checks
    if (username == 'admin' && password == 'admin123') {
      final box = await Hive.openBox('userBox');
      await box.put('isLoggedIn', true);

      Get.offAllNamed('/nav');
    } else {
      Get.snackbar("Username or Password wrong",
          "Please try again, check your username and password");
    }
  }
}
