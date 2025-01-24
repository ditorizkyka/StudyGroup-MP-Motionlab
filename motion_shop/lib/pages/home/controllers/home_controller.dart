import 'package:get/get.dart';
import 'package:motion_shop/pages/model/product_model_api.dart';
import 'package:motion_shop/services/product_service.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  RxString selectedCategory = 'all'.obs;
  RxList<ProductElement>? filteredProducts = <ProductElement>[].obs;
  Rx<Product> product = Product().obs;
  RxBool isLoading = true.obs;

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
    // update();
    isLoading.value = true;

    if (category != 'all') {
      filteredProducts!.value =
          await ProductService().getProductByCategory(url) ??
              <ProductElement>[];
    }
    print(filteredProducts!.value);
    isLoading.value = false;
  }

  void fetchAllProduct() async {
    product.value = await ProductService().getAllProduct() ?? Product();
    product.value.category = await ProductService().getCategoryProduct();
    // print(product.value.category);
    isLoading.value = false;
  }
}
