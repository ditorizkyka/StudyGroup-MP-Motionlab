import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_shop/app/model/product/product_model.dart';
import 'package:motion_shop/app/model/productElement/product_element.dart';
import 'package:motion_shop/app/pages/cart/controller/cart_controller.dart';
import 'package:motion_shop/app/pages/dashboard/home/controller/home_controller.dart';
import 'package:motion_shop/app/pages/product/controller/product_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final CartController cartController = Get.put(CartController());
    final ProductController productController = Get.put(ProductController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: GetBuilder<HomeController>(
        init: HomeController(),
        builder: (_) {
          return Obx(
            () => controller.isLoading.value
                ? const Center(child: CircularProgressIndicator())
                : Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: SafeArea(
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 40,
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 23),
                                        child: Text(
                                          "Our way of loving\nyou back",
                                          style: GoogleFonts.inter(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 23),
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15, vertical: 10),
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFF2F2F2),
                                            borderRadius:
                                                BorderRadius.circular(26.5),
                                          ),
                                          child: Row(
                                            children: [
                                              const Icon(
                                                Icons.search,
                                                color: Color(0xff868A91),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                "Search",
                                                style: GoogleFonts.inter(
                                                    color:
                                                        const Color(0xff161B28)
                                                            .withOpacity(0.58)),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 23),
                                        child: SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              children: List.generate(
                                                controller.product.value
                                                    .category!.length,
                                                (index) => CategoryLabel(
                                                    controller: controller,
                                                    category: controller.product
                                                        .value.category![index],
                                                    selected: controller
                                                        .product
                                                        .value
                                                        .category![index]
                                                        .slug),
                                              ),
                                            )),
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 23),
                                        child: Text(
                                          "Our Best Seller",
                                          style: GoogleFonts.inter(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      controller.isLoadingProduct.value
                                          ? const SizedBox(
                                              height: 300,
                                              child: Center(
                                                  child:
                                                      CircularProgressIndicator()),
                                            )
                                          : Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 23,
                                                      vertical: 30),
                                              child: GridView.builder(
                                                gridDelegate:
                                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                                        crossAxisCount: 2,
                                                        crossAxisSpacing: 15,
                                                        mainAxisSpacing: 15,
                                                        mainAxisExtent: 270),
                                                shrinkWrap: true,
                                                physics:
                                                    const NeverScrollableScrollPhysics(),
                                                itemCount: controller
                                                    .filteredProducts?.length,
                                                itemBuilder: (context, index) {
                                                  return CardProduct(
                                                    item: controller
                                                        .filteredProducts!
                                                        .value[index],
                                                    indexProduct: index,
                                                    controller:
                                                        productController,
                                                  );
                                                },
                                                // Jumlah item di grid
                                              ),
                                            )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
          );
        },
      ),
    );
  }
}

class CategoryLabel extends StatelessWidget {
  final CategoryProduct category;
  final String selected;
  final HomeController controller;

  const CategoryLabel({
    required this.category,
    required this.selected,
    required this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          print(selected);
          if (selected == category.slug) {
            controller.selectedCategory.value = selected;
            controller.filterProducts(selected, category.url);
          }
        },
        child: controller.selectedCategory.value == selected
            ? Container(
                margin: const EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                  color: const Color(0xff00623B),
                  borderRadius: BorderRadius.circular(24.5),
                  // border: Border.all(color: const Color(0xff00623B)),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                constraints: const BoxConstraints(
                  minWidth: 92, // Menetapkan lebar minimum
                ),
                child: Text(
                  category.name,
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            : Container(
                margin: const EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24.5),
                  border: Border.all(color: const Color(0xff00623B)),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                constraints: const BoxConstraints(
                  minWidth: 92, // Menetapkan lebar minimum
                ),
                child: Text(
                  category.name,
                  style: GoogleFonts.inter(
                    color: const Color(0xff00623B),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ));
  }
}

class CardProduct extends StatelessWidget {
  final ProductElement item;
  final int indexProduct;
  final ProductController controller;

  const CardProduct({
    required this.controller,
    required this.item,
    required this.indexProduct,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ProductElement? prd = controller.isPrdExist(item.id ?? 0);
    // print("ada prd home : ${prd!.title}");
    return Obx(
      () => GestureDetector(
        onTap: () {
          controller.id.value = item.id ?? 0;
          Get.toNamed('/product', arguments: item.id);
        },
        child: Container(
            // width: 177,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(9.72),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: const Offset(1, 1), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 190,
                  child: Image.network(
                    item.images![0],
                    width: double.infinity,
                    height: 187,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.title ?? "",
                        maxLines: 1, // Membatasi hanya 1 baris
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.raleway(
                          color: Colors.black,
                          fontSize: 13.88,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$${item.price.toString()}",
                            style: GoogleFonts.poppins(
                              color: const Color(0xff00623B),
                              fontSize: 17.35,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          GestureDetector(
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
                              color: prd!.isFavorite.value
                                  ? Colors.red
                                  : Colors.grey,
                              size: 23,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
