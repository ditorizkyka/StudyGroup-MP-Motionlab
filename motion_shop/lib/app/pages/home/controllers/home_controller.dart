import 'package:get/get.dart';
import 'package:motion_shop/app/pages/model/product_model.dart';
import 'package:motion_shop/service/product_service.dart';

class HomeController extends GetxController {
  String selectedCategory = 'All';
  List<Product> filteredProducts = [];
  var product = Product().obs;
  var isLoading = true.obs;

  @override
  void onInit() async {
    // product.value = await ProductService().getProducts() ?? Product();
    // isLoading.value = false;
    super.onInit();
    // ProductService().getProducts();
  }

  // void filterProducts(String category) {
  //   selectedCategory = category;
  //   update();

  //   if (category == 'All') {
  //     filteredProducts = DataDummy.listDummyProducts;
  //     update();
  //   } else {
  //     filteredProducts = DataDummy.listDummyProducts
  //         .where((product) => product.type == category)
  //         .toList();
  //     update();
  //   }
  // }
  // void fetchProduct() async {
  //   product.value = await ProductService().getProducts() ?? Product();
  //   isLoading.value = false;
  // }
}
