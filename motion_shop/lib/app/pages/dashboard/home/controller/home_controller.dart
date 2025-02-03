import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:motion_shop/app/model/product/product_model.dart';
import 'package:motion_shop/app/model/productElement/product_element.dart';
import 'package:motion_shop/services/product_service.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  RxString selectedCategory = 'all'.obs;
  RxList<ProductElement>? filteredProducts = <ProductElement>[].obs;
  Rx<Product> product = Product().obs;
  RxBool isLoading = true.obs;
  RxBool isLoadingProduct = true.obs;

  final count = 0.obs;
  @override
  void onInit() {
    fetchAllProduct();
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

  void filterProducts(String category, String url) async {
    selectedCategory.value = category;
    isLoadingProduct.value = true;

    if (category == 'all') {
      filteredProducts!.value = await ProductService()
              .getProductByCategory('https://dummyjson.com/products') ??
          <ProductElement>[];
    } else {
      filteredProducts!.value =
          await ProductService().getProductByCategory(url) ??
              <ProductElement>[];
    }
    // print(filteredProducts!.value);
    isLoadingProduct.value = false;
  }

  void fetchAllProduct() async {
    product.value = await ProductService().getAllProduct() ?? Product();
    product.value.category = await ProductService().getCategoryProduct();

    isLoading.value = false;
  }
}
