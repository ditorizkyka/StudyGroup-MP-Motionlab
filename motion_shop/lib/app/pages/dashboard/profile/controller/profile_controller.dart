import 'package:get/get.dart';
import 'package:hive/hive.dart';

class ProfileController extends GetxController {
  logout() async {
    var box = await Hive.openBox('userBox');
    box.put('isLoggedIn', false);
    Get.offAllNamed('/login');
  }
}
