import 'package:get/get.dart';
import 'package:motion_shop/pages/model/product_model_api.dart';
import 'package:motion_shop/services/product_service.dart';

class ProductController extends GetxController {
  //TODO: Implement HomeController
  RxBool isLoading = true.obs;
  Rx<ProductElement?> product = ProductElement(
    id: 0,
    title: '',
    description: '',
    category: Category.BEAUTY,
    price: 0,
    // image: '',
    discountPercentage: 0,
    rating: 0,
    stock: 0,
    tags: [],
    brand: '',
    sku: '',
    weight: 0,
    dimensions: Dimensions(width: 0, height: 0, depth: 0),
    shippingInformation: '',
    availabilityStatus: AvailabilityStatus.IN_STOCK,

    reviews: [],
    returnPolicy: ReturnPolicy.NO_RETURN_POLICY,
    minimumOrderQuantity: 0,

    meta: Meta(
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      barcode: '',
      qrCode: '',
    ),
    images: [],
    thumbnail: '',
    warrantyInformation: '',
  ).obs;

  final count = 0.obs;
  @override
  void onInit() {
    fetchProductById;
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

  void fetchProductById(String id) async {
    final product = await ProductService().getProductById(id);
    this.product.value = product;
    isLoading.value = false;
  }
}
