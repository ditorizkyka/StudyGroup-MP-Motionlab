import 'package:motion_shop/app/model/productElement/product_element.dart';
import 'package:motion_shop/app/shared/constanta.dart';
import 'package:motion_shop/app/model/product/product_model.dart';

class ProductService {
  Future<Product?> getAllProduct() async {
    try {
      final response = await dio.get('$url/products');
      print(response);
      if (response.statusCode == 200) {
        return Product.fromJson(response.data);
      }
      return null;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<List<CategoryProduct>?> getCategoryProduct() async {
    try {
      final response = await dio.get('$url/products/categories');

      List<CategoryProduct> categoryProduct = [
        CategoryProduct(
          name: 'All',
          slug: 'all',
          url: 'https://dummyjson.com/products',
        )
      ];
      if (response.statusCode == 200) {
        for (var i = 0; i < response.data.length; i++) {
          categoryProduct.add(CategoryProduct.fromJson(response.data[i]));
        }
        return categoryProduct;
      }
      return null;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<List<ProductElement>?> getProductByCategory(String url) async {
    try {
      List<ProductElement> productsCategory = [];
      final response = await dio.get(url);
      if (response.statusCode == 200) {
        // print('data : ${response.data['products'].length}');
        for (var i = 0; i < response.data['products'].length; i++) {
          try {
            print("Processing item ke-$i");
            print('reponse : ${response.data['products'][i]['title']}');
            productsCategory
                .add(ProductElement.fromJson(response.data['products'][i]));
          } catch (e) {
            print("Error pada item ke-$i: $e");
          }
        }

        return productsCategory;
      }
      return null;
    } catch (e) {
      print("kenapa $e");
      return null;
    }
  }

  Future<ProductElement?> getProductById(int id) async {
    try {
      final response = await dio.get('$url/products/$id');
      if (response.statusCode == 200) {
        return ProductElement.fromJson(response.data);
      }
      return null;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
