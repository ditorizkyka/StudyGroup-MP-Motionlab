import 'dart:convert';

import 'package:get/get.dart';
import 'package:motion_shop/app/model/product/product_model.dart';
import 'package:motion_shop/app/model/productElement/product_element.dart';
import 'package:motion_shop/app/pages/product/controller/product_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavoriteController extends GetxController {
  // RxList<ProductElement> favoritePrd = <ProductElement>[].obs;
  RxBool isLoading = true.obs;
  RxList<ProductElement> favoritePrd = <ProductElement>[].obs;
  // void addFavorite(ProductElement prd) {
  //   favoritePrd.add(prd);
  //   favoritePrd.refresh(); // Paksa UI untuk update
  // }

  // void removePrd(ProductElement prd) {
  //   favoritePrd.remove(prd);
  //   update();
  // }

  void getFavoritePrd() async {
    final product = Get.put(ProductController());
    final prefs = await SharedPreferences.getInstance();
    String? jsonString = prefs.getString('favoritePrd');

    if (jsonString != null) {
      print("masukget");
      List<dynamic> jsonList = json.decode(jsonString);
      isLoading.value = false;
      product.favoritePrd.value =
          jsonList.map((item) => ProductElement.fromJson(item)).toList();
    } else {
      print("gamasuk");
      product.favoritePrd.value = [];
    }
  }
}
