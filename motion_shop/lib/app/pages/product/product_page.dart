import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_shop/app/model/product/product_model.dart';
import 'package:motion_shop/app/model/productElement/product_element.dart';
import 'package:motion_shop/app/pages/dashboard/favorite/controller/favorite_controller.dart';
import 'package:motion_shop/app/pages/dashboard/home/controller/home_controller.dart';
import 'package:motion_shop/app/pages/product/controller/product_controller.dart';
import 'package:motion_shop/widget/button_app.dart';

class ProductPage extends GetView<ProductController> {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    final productController =
        Get.find<ProductController>(); // Gunakan Get.find()
    final favoriteController = Get.put(FavoriteController());
    ProductElement? prd = productController.isPrdExist(Get.arguments ?? 1);
    print("ini prd ${prd!.title}");
    // productController.fetchProductById(Get.arguments ?? 1);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        centerTitle: true,
        actions: [
          Obx(
            () => Padding(
              padding: const EdgeInsets.only(right: 23),
              child: GestureDetector(
                onTap: () {
                  prd.isFavorite.value = !prd.isFavorite.value;
                  if (prd.isFavorite.value) {
                    controller.addFavorite(prd);
                    // favoriteController.favoritePrd.add(prd);
                    print(controller.favoritePrd.length);
                  } else {
                    controller.removePrd(prd);
                  }
                },
                child: Icon(
                  Icons.favorite,
                  color: prd.isFavorite.value ? Colors.red : Colors.grey,
                  size: 23,
                ),
              ),
            ),
          ),
        ],
        leading: IconButton(
          iconSize: 30,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.chevron_left_rounded,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Product",
          style: GoogleFonts.inter(
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      width: double.infinity,
                      height: 401,
                      prd.images![0],
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 15),
                    Text(
                      " ${prd.title} ${controller.favoritePrd.length}" ?? '',
                      style: GoogleFonts.roboto(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "\$${prd.price.toString()}",
                      style: const TextStyle(
                          fontSize: 20, color: Color(0xFF00623B)),
                    ),
                    const SizedBox(height: 35),
                    Text(
                      prd.description ?? '',
                      style: GoogleFonts.roboto(
                        fontSize: 18,
                        color: const Color(0xff6D6D6D),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            child: GestureDetector(
              onTap: () {
                Get.offNamed("/cart");
              },
              child: ButtonApp(
                text: "Add to bag",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
