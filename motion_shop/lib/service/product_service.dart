import 'package:motion_shop/app/pages/model/product_model.dart';
import 'package:motion_shop/app/shared/constanta.dart';
import 'package:http/http.dart' as http;

class ProductService {
  Future<void> getProducts() async {
    try {
      var response = await dio.get('https://dummyjson.com/products/1');
      print(response.statusCode);
      // if (response.statusCode == 200) {
      //   return Product.fromJson(response.data);
      // }
    } catch (e) {
      print("object");
    }
  }

  // Future<ProductElement?> getDetailsProducts({required int id}) async {
  //   try {
  //     final response = await dio.get('$url/products/$id');
  //     print(response.data);
  //     if (response.statusCode == 200) {
  //       return ProductElement.fromJson(response.data);
  //     }
  //     return null;
  //   } catch (e) {
  //     return throw Exception(e);
  //   }
  // }
}
