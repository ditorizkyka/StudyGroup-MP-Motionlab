import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_shop/controller/cart_controller.dart';
import 'package:motion_shop/widget/button_app.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    final cartController = Get.put(CartController());
    return Obx(
      () => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          surfaceTintColor: Colors.white,
          centerTitle: true,
          actions: [],
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
            "My Cart",
            style: GoogleFonts.inter(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // CartProduct(
                        //   decrement: () {
                        //     cartController.qtyDecrement();
                        //   },
                        //   increment: () {
                        //     cartController.qtyIncrement();
                        //   },
                        //   productName: "Mi Band 8 Pro - Brand New",
                        //   productPrice: "\$54.00",
                        //   imageAsset: "assets/images/band.png",
                        // ),
                        // CartProduct(
                        //   decrement: () {
                        //     cartController.qtyDecrement();
                        //   },
                        //   increment: () {
                        //     cartController.qtyIncrement();
                        //   },
                        //   productName: "Lycra Men’s shirt",
                        //   productPrice: "\$12.00",
                        //   imageAsset: "assets/images/t-shirt.png",
                        // ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          padding: const EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/images/band.png",
                                width: 92,
                                height: 96,
                              ),

                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      maxLines: 2,
                                      "Mi Band 8 Pro - Brand New",
                                      style: GoogleFonts.inter(
                                        // fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "\$54.00",
                                      style: GoogleFonts.inter(
                                        color: const Color(0xff00623B),
                                        // fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // const Spacer(),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                                alignment: Alignment.center,
                                width: 70,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 2),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                  border: Border.all(
                                    color: const Color(0xff00623B),
                                  ),
                                ),
                                child: Row(
                                  // mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        cartController.qtyDecrement();
                                      },
                                      child: Text(
                                        '-',
                                        style: GoogleFonts.inter(
                                          fontSize: 20,
                                          color: const Color(0xff00623B),
                                        ),
                                      ),
                                    ),
                                    Text("${cartController.qty}",
                                        style: GoogleFonts.inter(fontSize: 14)),
                                    GestureDetector(
                                      onTap: () {
                                        cartController.qtyIncrement();
                                      },
                                      child: Text(
                                        '+',
                                        style: GoogleFonts.inter(
                                          fontSize: 20,
                                          color: const Color(0xff00623B),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          padding: const EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/images/t-shirt.png",
                                width: 92,
                                height: 96,
                              ),

                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      maxLines: 2,
                                      "Lycra Men's shirt",
                                      style: GoogleFonts.inter(
                                        // fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "\$12.00",
                                      style: GoogleFonts.inter(
                                        color: const Color(0xff00623B),
                                        // fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // const Spacer(),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                                alignment: Alignment.center,
                                width: 70,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 2),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                  border: Border.all(
                                    color: const Color(0xff00623B),
                                  ),
                                ),
                                child: Row(
                                  // mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        cartController.qtyDecrement();
                                      },
                                      child: Text(
                                        '-',
                                        style: GoogleFonts.inter(
                                          fontSize: 20,
                                          color: const Color(0xff00623B),
                                        ),
                                      ),
                                    ),
                                    Text("${cartController.qty}",
                                        style: GoogleFonts.inter(fontSize: 14)),
                                    GestureDetector(
                                      onTap: () {
                                        cartController.qtyIncrement();
                                      },
                                      child: Text(
                                        '+',
                                        style: GoogleFonts.inter(
                                          fontSize: 20,
                                          color: const Color(0xff00623B),
                                        ),
                                      ),
                                    ),
                                  ],
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
              Container(
                  padding: const EdgeInsets.all(10),
                  child: ButtonApp(
                    text: "Buy Now",
                    onTap: () {
                      Navigator.pushNamed(context, '/invoice');
                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class CartProduct extends StatelessWidget {
  final String productName;
  final String productPrice;
  final String imageAsset;
  final GestureTapCallback decrement;
  final Function increment;

  const CartProduct({
    required this.decrement,
    required this.increment,
    required this.productName,
    required this.productPrice,
    required this.imageAsset,
    super.key,
  });

  // final CartController cartController;

  @override
  Widget build(BuildContext context) {
    CartController cartController = Get.put(CartController());
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageAsset,
            width: 92,
            height: 96,
          ),

          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  maxLines: 2,
                  productName,
                  style: GoogleFonts.inter(
                    // fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  productPrice,
                  style: GoogleFonts.inter(
                    color: const Color(0xff00623B),
                    // fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          // const Spacer(),
          Container(
            margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
            alignment: Alignment.center,
            width: 70,
            padding: const EdgeInsets.symmetric(vertical: 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              border: Border.all(
                color: const Color(0xff00623B),
              ),
            ),
            child: Row(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: decrement,
                  child: Text(
                    '-',
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      color: const Color(0xff00623B),
                    ),
                  ),
                ),
                Text("${cartController.qty}",
                    style: GoogleFonts.inter(fontSize: 14)),
                GestureDetector(
                  onTap: () => decrement,
                  child: Text(
                    '+',
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      color: const Color(0xff00623B),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
