// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:motion_shop/app/model/productElement/product_element.dart';
import 'package:motion_shop/app/pages/auth/auth_login/controller/login_controller.dart';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
  List<ProductElement>? products;
  int? total;
  int? skip;
  int? limit;
  List<CategoryProduct>? category;

  Product({this.products, this.total, this.skip, this.limit, this.category});

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        products: List<ProductElement>.from(
            json["products"].map((x) => ProductElement.fromJson(x))),
        total: json["total"],
        skip: json["skip"],
        limit: json["limit"],
      );

  Map<String, dynamic> toJson() => {
        "products": List<dynamic>.from(products!.map((x) => x.toJson())),
        "total": total,
        "skip": skip,
        "limit": limit,
      };
}
