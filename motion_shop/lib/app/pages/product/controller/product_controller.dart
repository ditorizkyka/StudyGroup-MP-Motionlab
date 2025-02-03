import 'dart:convert';

import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:motion_shop/app/model/product/product_model.dart';
import 'package:motion_shop/app/model/productElement/product_element.dart';
import 'package:motion_shop/app/pages/dashboard/home/controller/home_controller.dart';
import 'package:motion_shop/app/shared/constanta.dart';
import 'package:motion_shop/services/product_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProductController extends GetxController {
  //TODO: Implement HomeController
  RxBool isLoadingProductPage = false.obs;
  RxInt id = 0.obs;
  Rx<ProductElement?> product = ProductElement().obs;

  RxList<ProductElement> favoritePrd = <ProductElement>[].obs;

  void addFavorite(ProductElement prd) async {
    final prefs = await SharedPreferences.getInstance();
    favoritePrd.add(prd);

    String updatedJson = json.encode(favoritePrd);
    await prefs.setString('favoritePrd', updatedJson);

    favoritePrd.refresh(); // Paksa UI untuk update
  }

  void removePrd(ProductElement prd) {
    favoritePrd.remove(prd);
    update();
  }

  final count = 0.obs;
  @override
  void onInit() {
    // fetchProductById(id.value);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  isPrdExist(int arg) {
    final homeController = Get.find<HomeController>();
    List<ProductElement> products = homeController.product.value.products!;

    for (int i = 0; i < products.length; i++) {
      if (products[i].id == arg) {
        return products[i];
      }
    }
    print("gaada");
    return null;
  }

  void fetchProductById(int id) async {
    isLoadingProductPage.value = true;
    product.value =
        await ProductService().getProductById(id) ?? ProductElement();
    print(product.value!.title);
    isLoadingProductPage.value = false;
  }
}
